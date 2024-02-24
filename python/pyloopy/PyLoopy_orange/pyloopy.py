"""
NthEvent server and utilities

This module provides an event server and client utilities for
MIDI and iGesture devices.
 
Copyright (c) 2007, Tim Thompson
All rights reserved.	

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

-  Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.

-  Redistributions in binary form must reproduce the above copyright notice, 
   this list of conditions and the following disclaimer in the documentation 
   and/or other materials provided with the distribution.

-  Neither the name of Tim Thompson, nosuch.com, nor the names of
   any contributors may be used to endorse or promote products derived
   from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
"""

import sys
import time
import traceback
import thread
import threading
import copy
import asyncore
import asynchat
import socket
import sys
import re
import xml.dom.minidom as xmldom
import string
import pygame.pypm
import os.path
import nthprocess
import os, pygame
import pickle

from os.path import isdir, isfile, isabs, abspath
from urllib import quote, unquote
from threading import *
from ctypes import *
from time import sleep
from Queue import Queue, Empty
from xml.sax import saxutils
from xml.dom import Node
from traceback import format_exc 
from dircache import listdir
from pygame.locals import *
from thread import *

from nosuch.fingerutil import *
from nosuch.midiutil import *
from nosuch.mididebug import *
from nosuch.midifile import *
from nthprocess import *
from nosuch.oscutil import *
from nthmidi import NthMidiHardware

from ffff import *

LoopyAutoStart = True
global debug
debug = False
global debugosc
debugosc = False
global debugosc2
debugosc2 = False

class NthEventServer(Thread):
	"""
	Provides an event stream that can serve multiple listeners
	track of what fingers are currently down, smoothing drag motion, etc.
	"""

	oneServer = None

	def __init__(self, midihardware):

		Thread.__init__(self)
		self.setDaemon(True)

		NthEventServer.oneServer = self

		print "NthEventServr start midihardware=", midihardware
		print "NthEventServer.oneServer = ", NthEventServer.oneServer
		self.dispenser = PushedEventDispenser()

		self.midihardware = midihardware

		self.throttle = 0.005
		self.throttle = 0.0

		self.inputs = {}
		self.outputs = {}

		self.cv = threading.Condition()
		self.events = {}
		self.firstevent = 0
		self.nextevent = 0
		self.osc_recipients = {"music":[], "graphic":[]}

		self.start()
		self.too_old_seconds = 30.0
		self.event_inputs = {}
		self.forward_inputs = {}
		self.forward_finger = None

		self.tm0 = time.time()
		self.osc_count = 0

		self.ui = None

	@staticmethod
	def server(midihardware=None):
		if NthEventServer.oneServer == None:
			if midihardware == None:
				print "Hey, no midi hardware??  Using MidiDebugHardware"
				midihardware = MidiDebugHardware
			NthEventServer.oneServer = NthEventServer(midihardware)
		return NthEventServer.oneServer

	@staticmethod
	def push_event(ev, data):
		# print "PUSH_EVENT! ev=", ev
		if debug:
			print "push_event ev=", ev
		NthEventServer.server()._push_event(ev)

	@staticmethod
	def current_index():
		return NthEventServer.server()._current_index()

	@staticmethod
	def num_events_after(lasti):
		return NthEventServer.server()._num_events_after(lasti)

	def broadcast_event(self, ev):
		self.cv.acquire()
		# The events we're getting (e.g. from pyportmidi)
		# have a .time value that is more accurate/correct
		# than we could do here.
		self.events[self.nextevent] = ev
		self.nextevent += 1

		self.cv.notifyAll()

		too_old = ev.time - self.too_old_seconds
		while self.events[self.firstevent].time < too_old \
			and self.firstevent < self.nextevent:

			del self.events[self.firstevent]
			self.firstevent += 1
		self.cv.release()

	def set_processor(self, p):
		self.dispenser.set_processor(p)

	def set_ui(self, ui):
		# print"SET_UI setting ui to ",ui
		self.ui = ui

	def change_ui(self, cnm, v):
		if not self.ui:
			return
		self.ui.change_ui(cnm, v)

	def send_osc(self, o, apptype):
		(msg_addr, msg_data) = o
		if msg_addr == "":
			print "No msg_addr value in send_osc?"
			return
		now = time.time()
		self.osc_count += 1
		if now - self.tm0 > 1.0:
			print "OSC Per second = ", self.osc_count
			self.osc_count = 0
			self.tm0 = now
		msg_addr = str(msg_addr)
		b = createBinaryMsg(msg_addr, msg_data)
		# print "createBinary msg_addr=",msg_addr," msg_data=",msg_data
		if debugosc:
			print("sending %s OSC=%s" % (apptype, o.__str__()))
		if apptype == "all":
			self.send_osc_to_apptype(b, "music")
			self.send_osc_to_apptype(b, "graphic")
		else:
			self.send_osc_to_apptype(b, apptype)

	def send_osc_to_apptype(self, b, apptype):
		toremove = []
		for r in self.osc_recipients[apptype]:
			if debugosc2:
				print("   to %d@%s" % (r.osc_port, r.osc_addr))
			try:
				r.osc_socket.sendto(b, (r.osc_addr, r.osc_port))
			except:
				NthServer.logerror("Error trying to send osc to apptype=%s osc_addr=%s" % (apptype, r.osc_addr))
				toremove.append(r)
				# NthServer.logerror("Error trying to send osc - %s"%(format_exc()))
				continue
		for r in toremove:
			try:
				self.osc_recipients[apptype].remove(r)
			except:
				# due to trying to remove same one twice
				pass

	def set_midi_timezero(self, t):
		self.midi_timezero = t;

	def set_finger_timezero(self, t):
		self.finger_timezero = t;

	def set_osc_timezero(self, t):
		self.osc_timezero = t;

	def add_osc_recipient(self, addr, port, type):
		print "Adding OSC recipient at IP address", addr, "port", port
		o = OscRecipient(addr, port)
		self.osc_recipients[type].append(o)

	def remove_osc_recipient(self, addr, port, type):
		print "Removing OSC recipient at IP address", addr, "port", port
		for r in self.osc_recipients[type]:
			if addr == r.osc_addr and port == r.osc_port:
				self.osc_recipients[type].remove(r)
				break

	def set_finger_order(self, o):
		self.finger_order = o

	def set_midi_events(self, in_expr):
		# Find the real names matched by the regular expression
		for nm in self.inputs:
			if re.search(in_expr, nm):
				self.event_inputs[self.inputs[nm]] = 1

	def set_fingertype(self, t):
		if t == "fret":
			self.do_frets = True
		elif t == "raw":
			self.do_frets = False
		else:
			print "Unrecognized value in fingertype: ", t

	def open_outputs(self, midiout):
		print "Opening MIDI outputs: ", midiout
		for nm in self.midihardware.output_devices():
			if re.search(midiout, nm):
				print("Opening Output = " + nm)
				o = self.midihardware.get_output(nm)
				try:
					o.open()
					self.outputs[nm] = o
				except:
					NthServer.logerror("Error during open of output %s - %s" % (nm, format_exc()))
					continue

	def open_inputs(self, midiin):
		print "Opening MIDI inputs: ", midiin
		for nm in self.midihardware.input_devices():
			if re.search(midiin, nm):
				print("Opening Input = " + nm)
				i = self.midihardware.get_input(nm)
				try:
					i.open()
					self.inputs[nm] = i
				except:
					NthServer.logerror("Error during open of input %s - %s" % (nm, format_exc()))
					continue

	def get_midiout(self, out_expr):
		for nm in self.outputs:
			if re.search(out_expr, self.outputs[nm].name):
				return self.outputs[nm]
		return None

	def set_midi_forward(self, in_expr, out_expr):

		print "MIDI_FORWARD out_expr=", out_expr

		# Find the real outputs matched by out_expr
		outs = []
		for nm in self.outputs:
			print "MIDI_FORWARD looking at nm=", nm

			if re.search(out_expr, nm):
				outs.append(self.outputs[nm])

		if len(outs) <= 0:
			print "Hey, no outputs matched: ", out_expr
			return

		any = False
		for nm in self.inputs:
			# print "looking at nm=",nm," in_expr=",in_expr
			if re.search(in_expr, nm):
				any = True
				self.forward_inputs[self.inputs[nm]] = outs

		if not any:
			print "Hey, no inputs matched: ", in_expr

	def set_finger_forward(self, out_expr):
		o = None
		# Find the real name matched by the regular expression
		for nm in self.outputs:
			if re.search(out_expr, nm):
				o = self.outputs[nm]
				break
		if o:
			self.forward_finger = o


	def _send_mapped_midi_osc_event(self, ev):
		o = None
		m = ev.midimsg
		if isinstance(m, Controller):
			if m.channel == 15 and m.controller >= 0 and m.controller < 4:
				if m.value != 0:
					b = 1
				else:
					b = 0
				o = ("/nth/action/record", [m.controller, b])
				print "o=", o

			elif m.channel == 14 and m.controller >= 64 and m.controller < 68:
				if m.value != 0:
					b = 1
				else:
					b = 0
				o = ("/nth/action/play", [m.controller - 64, b])
			elif m.channel == 14 and m.controller >= 0 and m.controller < 4:
				o = ("/nth/action/randframe", [m.controller])

		if o != None:
			print "o was set, sending it"
			self.send_osc(o, "graphic")
		else:
			self._send_osc_event(ev)

	def _push_event(self, ev):
		self.dispenser.push_event(ev)
		# if self.processor == None:
		# 	print "_push_event with no processor, ev=",ev
		# else:
		# 	try:
		# 		self.processor.process(ev)
		# 	except:
		# 		NthServer.logerror("Error in call to processor - %s"%(format_exc()))

	def _send_osc_event(self, ev, type):
		o = ev.to_osc()
		if o != None:
			# print "send_osc_event ev=",ev," type=",type
			self.send_osc(o, type)

	def _current_index(self):
		return self.nextevent - 1

	def _num_events_after(self, lasti):
		nexti = lasti + 1
		if nexti < self.firstevent:
			return 0
		if nexti > self.nextevent:
			return 0	# shouldn't happen
		return self.nextevent - nexti

	def _event_after(self, lasti, wait=False):
		self.cv.acquire()
		thisi = lasti + 1
		if thisi < self.firstevent:
			thisi = self.firstevent
		if thisi >= self.nextevent:
			if not wait:
				self.cv.release()
				return None

			self.cv.wait()
			if thisi >= self.nextevent:
				print "Hey, wait returned but nextevent hasn't changed!?"
				self.cv.release()
				return None
		e = copy.copy(self.events[thisi])
		self.cv.release()
		return (e, thisi)

class NthEventListener:
	"""
	Provide independent access to a stream of events.
	"""
	def __init__(self):
		# start from the current index
		server = NthEventServer.server()
		self.lastindex = server.current_index()

	def next_event(self, timeout=5.0):
		server = NthEventServer.server()
		arr = server._event_after(self.lastindex, wait=False)
		if arr == None:
			# Wait for the next event
			arr = server._event_after(self.lastindex, wait=True)
			if arr == None:
				print "Hey, waited for event, but got None!?"
				return None
		self.lastindex = arr[1]
		return arr[0]

	def num_events_waiting(self):
		server = NthEventServer.server()
		return server.num_events_after(self.lastindex)

class PushedEventDispenser(Thread):

	def __init__(self):
		Thread.__init__(self)
		self.setDaemon(True)
		self.q = Queue()
		self.processor = None
		self.start()

	def push_event(self, ev):
		self.q.put(ev)

	def set_processor(self, p):
		# print "PUSHED_EVENT_PROCESSOR setting processor to p=",p
		self.processor = p

	def run(self):
		while True:
			events = []

			# We normally block here waiting for events to be pushed
			events.append(self.q.get())

			# print "qsize=",self.q.qsize()
			try:
				while True:
					e = self.q.get_nowait()
					events.append(e)
			except Empty:
				pass

			# print "   post nowait, qsize=",self.q.qsize()
			self.process_events(events)

	def process_events(self, events):
		while len(events) > 0:
			ev = events.pop(0)

			# If the event is a MIDI controller, look through
			# the other events we've received to see if there
			# are any other events for the same controller
			if isinstance(ev, MidiEvent) and isinstance(ev.midimsg, Controller):
				i = 0
				# print "CONTROLLER!  len=",len(events)
				while i < len(events):
					# print "  Loop top i=",i
					e = events[i]
					if isinstance(e, MidiEvent) and isinstance(e.midimsg, Controller) and e.midimsg.controller == ev.midimsg.controller:
						# print "SAME CONTROLLER! removing i=",i
						ev = e
						events.pop(i)
					else:
						i += 1

			if self.processor == None:
				# print "_push_event with no processor, ev=",ev
				pass
			else:
				try:
					# print "_push_event to processor, ev=",ev
					self.processor.process(ev)
				except:
					NthServer.logerror("Error in call to processor - %s" % (format_exc()))

class NthEventMonitor(Thread):
	"""
	A thread that prints all events it sees.
	"""

	monitornum = 0

	def __init__(self):
		Thread.__init__(self)
		self.setDaemon(True)
		self.start()

	def run(self):
		f = NthEventListener()
		while True:
			print f.next_event()


class NthServer (asyncore.dispatcher):

	"""listens for connections"""
	def __init__ (self, httpaddr, httpport, midiin, midiout, rootdir, fingertype, processor):
		asyncore.dispatcher.__init__ (self)
		self.ui = None
		self.create_socket(socket.AF_INET, socket.SOCK_STREAM)
		self.set_reuse_addr()
		print "Listening for XML on addr =", httpaddr, " port =", httpport
		self.bind((httpaddr, httpport))
		self.listen (5)
		self.count = 0
		self.connections = {}

		print "NthServer start"
		domidi = True
		doosc = False
		dofinger = False

		if domidi:
			Midi.startup()
			self.midihardware = NthMidiHardware()
		else:
			self.midihardware = None

		print "NthServer start midihardware=", self.midihardware

		self.server = NthEventServer.server(self.midihardware)

		if dofinger:
			Finger.startup()
		if doosc:
			try:
				# oscmon = OscMonitor("127.0.0.1",1385)
				oscmon = OscMonitor("192.168.1.102", 6666)
			except:
				print "WARNING: unable to create OscMonitor!! err=", format_exc()
				self.shutdown_quick()

		if dofinger:
			self.server.set_fingertype(fingertype)
		if domidi:
			self.server.set_midi_timezero(Midi.time_now())
		if dofinger:
			self.server.set_finger_timezero(Finger.time_now())
		if doosc and oscmon != None:
			self.server.set_osc_timezero(oscmon.time_now())

		if doosc:
			self.server.add_osc_recipient("127.0.0.1", 1384, "music")
			# self.server.add_osc_recipient("nosuchbook",3333,"graphic")
			# self.server.add_osc_recipient("antiprism",3333,"graphic")

		self.rootdir = rootdir

		if domidi:
			Midi.callback(NthEventServer.push_event, "")
		if dofinger:
			Finger.callback(NthEventServer.push_event, "")
		if doosc and oscmon != None:
			oscmon.setcallback(self.got_osc, "")

		self.gridout = None
		if midiout:
			self.server.open_outputs(midiout)
			self.gridout = self.server.get_midiout("Launchpad")
			self.grid_reset()
		if midiin:
			self.server.open_inputs(midiin)

	def got_osc(self, ev, data):
		# print "GOT OSC! ev.time=",ev.time," time=", time.time()
		for m in ev.oscmsg:
			# print "OSC m=",m," time=",time.time()
			addr = m[0]
			if addr[0:6] != "/tuio/":
				continue
			addr = addr[6:]
			if m[2] == "alive" or m[2] == "fseq":
				continue
			if addr == "25Dcur" or addr == "2Dcur":
				id = m[3]
				x = m[4]
				y = m[5]
				if self.ui:
					self.ui.got_xy(x, y, id)
			else:
				print "UNHANDLED! m=", m
			# print "   end time=",time.time()


	def grid_led(self, r, c, b):
		if b:
			v = 127
		else:
			v = 0
		# The top row is special (controller msgs rather than notes)
		if r == 8:
			nt = Controller(channel=1, controller=(104 + c), value=v)
		else:
			nt = NoteOn(channel=1, pitch=(112 - 16 * r + c), velocity=v)
		if self.gridout:
			self.gridout.schedule(nt)

	def grid_reset(self):
		nt = Controller(channel=1, controller=0, value=0)
		if self.gridout:
			self.gridout.schedule(nt)

	def set_processor(self, p):
		print "AAAAAAA setting processor to p=", p
		return self.server.set_processor(p)

	def set_ui(self, ui):
		print "SETTING UI in NthServer, ui=", ui
		self.ui = ui
		self.server.set_ui(ui)

	def send_osc(self, o, type):
		self.server.send_osc(o, type)

	def push_event(self, ev, data):
		# print("PUSH_EVENT ev=", ev)
		self.server.push_event(ev, data)

	def set_finger_order(self, fingerorder):
		return self.server.set_finger_order(fingerorder)

	def set_midi_events(self, midievents):
		return self.server.set_midi_events(midievents)

	def set_midi_forward(self, in_expr, out_expr):
		return self.server.set_midi_forward(in_expr, out_expr)

	def handle_accept (self):
		self.count += 1
		try:
			NthResponder (self, self.server, self.count, self.rootdir, self.accept())
		except:
			NthServer.logerror("accept() error on connection %d - %s" % (self.count, format_exc()))

	@staticmethod
	def logerror(msg):
		print("NthServer error: " + msg);

	def destroy (self):
		Midi.shutdown()
		time.sleep(0.1)
		asyncore.socket_map.clear()
		raise asyncore.ExitNow

	def shutdown(self):
		self.destroy()

	def shutdown_quick(self):
		Midi.shutdown()
		time.sleep(0.1)
		sys.exit(0)

class NthServerThread(Thread):
	def __init__(self):
		Thread.__init__(self)

	def run(self):
		try:
			asyncore.loop(1.0)
		except asyncore.ExitNow:
			pass

class NthResponder (asynchat.async_chat):
	"""this is what does the server<=>client stuff"""
	def __init__ (self, server, eventserver, count, rootdir, (conn, addr)):
		asynchat.async_chat.__init__(self, conn)
		self.readqueue = Queue(0)
		self.set_terminator ('\0')
		self.beingClosed = False
		self.server = server
		self.eventserver = eventserver
		self.buffer = ''
		self.id = id(self)
		self.ip = addr[0]
		self.count = count
		self.rootdir = rootdir
		# initialized on connect
		self.service = None
		self.server.connections[self.id] = self
		self.execthread = thread.start_new_thread(self.module_executor, (self,))
		self.currentnode = None
		self.shutdownOnClose = False
		self.listener = NthEventListener()
		self.lock = thread.allocate_lock()

	def collect_incoming_data (self, data):
		self.buffer += data

	def found_terminator (self):
		"""we just received a nice document, do stuff"""
		self.readqueue.put(self.buffer)
		self.buffer = ''

	def safeshutdown(self):
		self.shutdownOnClose = True
		self.send_ok()

	def quickshutdown(self):
		print("Starting quick shutdown")
		self.send_ok()
		self.server.shutdown()

	def module_executor(self, responder):
		try:
			while True:
				data = self.readqueue.get()
				self.execute_doc(data)
		except:
			e = format_exc()
			NthServer.logerror("Error in module_executor error=%s" % (e))

	def execute_doc(self, data):
		global debug
		if debug:
			print("data=", data)
		try:
			doc = xmldom.parseString(data)
		except:
			NthServer.logerror("Exception: " + format_exc())
			NthServer.logerror("XML data that caused it: " + str(data))
			return

		for x in doc.childNodes:
			self.execute_xml(x)
		doc.unlink()

	def execute_xml(self, x):
		try:
			self.onXML(x)
		except:
			e = format_exc()
			NthServer.logerror("Error in module for node=%s error=%s"
					% (x.localName, e))

	def send_error(self, e):
		"""sends an <error value="%s" /> tag to the client
		"""
		xml = ['<error>%s</error>' % saxutils.escape(e)]
		self.send_response(string.join(xml, ''))


	def handle_close (self):
		print("Handle_close!")
		self.beingClosed = True
		try:
			if self.server.connections.has_key(self.id):
				del(self.server.connections[self.id])
			self.close()
		except:
			e = format_exc()
			print("UNEXPECTED error in handle_close: %s" % (e))

		if self.shutdownOnClose:
			self.server.shutdown()

	def handle_write(self):
		# The asyncore.loop thread calls this.
		self.lock.acquire()
		asynchat.async_chat.handle_write(self)
		self.lock.release()

	def destroy (self):
		if self.beingClosed:
			return
		self.handle_close()

	def send_response(self, data):
		if self.beingClosed:
			return

		# Because there are two threads that are accessing
		# the async_chat producer fifo (this one, and the
		# main asyncore loop thread), we need to lock things.
		global debug
		if debug:
			print("send_response data=", data)

		self.lock.acquire()
		try:
			asynchat.async_chat.push(self, data + self.terminator)
		except:
			NthServer.logerror("send_response error: " + format_exc())
		self.lock.release()

	def onXML (self, doc):
		global debug
		if debug:
			print("onXML=", doc.toxml())
		try:
			if doc.localName == "next_event": self.next_event(doc)
			elif  doc.localName == "logout": self.handle_close()
			elif  doc.localName == "quickshutdown": self.quickshutdown()
			elif  doc.localName == "shutdown": self.safeshutdown()
			elif  doc.localName == "list_devices": self.list_devices()
			elif  doc.localName == "list_dir": self.list_dir(doc)
			elif  doc.localName == "read_file": self.read_file(doc)
			elif  doc.localName == "write_file": self.write_file(doc)
			elif  doc.localName == "midi_playfile": self.midi_playfile(doc)
			elif  doc.localName == "list_midi_inputs": self.list_midi_inputs()
			elif  doc.localName == "list_midi_outputs": self.list_midi_outputs()
			elif  doc.localName == "write_midi": self.write_midi(doc)
			else:  self.send_error("No such method: " + doc.localName)
		except:
			e = "Error while handling '%s' : %s" % (doc.localName, format_exc())
			self.send_error(e)
			NthServer.logerror(e)

	def check_path(self, path):
		if self.rootdir == None:
			self.send_error("NthServer does not have rootdir configured.");
			return None
		fullpath = os.path.join(self.rootdir, path)
		normpath = abspath(fullpath)
		if not normpath.startswith(self.rootdir):
			self.send_error("NthServer does not allow access outside the rootdir.")
			return None
		return fullpath

	def send_ok(self):
		xml = ["<ok/>"]
		self.send_response(string.join(xml, ''))

	def midi_playfile (self, doc):
		dirname = doc.getElementsByTagName("name")[0].childNodes[0].data
		path = self.check_path(dirname)
		if path == None:
			return
		print "midi_playfile, path=", path
		p = Phrase.fromMidiFile(path)
		print "path=", path, "  Length of Phrase is ", len(p.events)
		outputs = self.eventserver.outputs
		for m in p.events:
			for nm in outputs:
				# print "Sending m=",m," to output=",nm
				o = outputs[nm]
				o.schedule(m)

		self.send_ok()

	def list_dir(self, doc):
		if self.rootdir == None:
			self.send_error("NthServer does not have rootdir configured.");
			return

		dirname = doc.getElementsByTagName("name")[0].childNodes[0].data
		path = self.check_path(dirname)
		if path == None:
			return
		if not isdir(path):
			self.send_error("Not a directory: %s" % (dirname))
			return
		list = listdir(path)
		xml = ["<directory>"]
		for f in list:
			listpath = os.path.join(path, f)
			escapef = saxutils.escape(f)
			if isdir(listpath):
				xml.append("<dir>" + escapef + "</dir>")
			elif isfile(listpath):
				xml.append("<file>" + escapef + "</file>")
		xml.append("</directory>")
		self.send_response(string.join(xml, ''))

	def read_file(self, doc):
		if self.rootdir == None:
			self.send_error("NthServer does not have rootdir configured.");
			return
		fname = doc.getElementsByTagName("name")[0].childNodes[0].data
		path = self.check_path(fname)
		if path == None:
			return
		try:
			f = open(path, mode="rb");
			d = f.read();
			f.close();
			xml = ["<file_contents>"]
			# Convert all non-printable chars to %xx form
			d = quote(d);
			xml.append(saxutils.escape(d));
			xml.append("</file_contents>")
			self.send_response(string.join(xml, ''))
		except:
			e = "Error while reading '%s' : %s" % (fname, format_exc())
			self.send_error(e)
			NthServer.logerror(e)

	def write_file(self, doc):
		if self.rootdir == None:
			self.send_error("NthServer does not have rootdir configured.");
			return
		fname = doc.getElementsByTagName("name")[0].childNodes[0].data
		data = doc.getElementsByTagName("data")[0].childNodes[0].data
		path = self.check_path(fname)
		if path == None:
			return

		try:
			f = open(path, mode="wb");
			data = unquote(data);
			f.write(data);
			f.close();
			self.send_ok()
		except IOError, e:
			# Don't give away full path info in the error
			self.send_error("Unable to write file.");
			NthServer.logerror(format_exc())
		except:
			self.send_error("Unexpected error while writing file.");
			NthServer.logerror(format_exc())

	def list_midi_inputs(self):
		xml = ["<midi_inputs>"]
		for nm in self.eventserver.inputs:
			xml.append(self.eventserver.inputs[nm].to_xml());
		xml.append("</midi_inputs>")
		self.send_response(string.join(xml, ''))

	def list_midi_outputs(self):
		xml = ["<midi_outputs>"]
		for nm in self.eventserver.outputs:
			xml.append(self.eventserver.outputs[nm].to_xml());
		xml.append("</midi_outputs>")
		self.send_response(string.join(xml, ''))

	def write_midi(self, doc):
		for node in doc.childNodes:
			if node.nodeType == Node.ELEMENT_NODE:
				m = MidiMsg.from_xml(node)
				attrs = node.attributes
				a = attrs.get("devindex")
				if a == None:
					# if no explicit devindex,
					# send it to all outputs
					for nm in self.eventserver.outputs:
						o = self.eventserver.outputs[nm]
						o.schedule(m)
				else:
					devindex = int(a.nodeValue)
					o = self.find_output_by_index(devindex)
					o.schedule(m)
		self.send_ok()

	def find_output_by_index(self, i):
		for nm in self.eventserver.outputs:
			if self.eventserver.outputs[nm].index == i:
				return self.eventserver.outputs[nm]
		return None

	def list_devices(self):

		xml = ["<devices>"]

		midihardware = self.eventserver.midihardware

		devs = midihardware.input_devices() 
		for nm in devs:
			o = midihardware.get_input(nm)
			xml.append(o.to_xml())

		devs = midihardware.output_devices() 
		for nm in devs:
			o = midihardware.get_output(nm)
			xml.append(o.to_xml())

		for n in range(Finger.num_devices()):
			o = FingerDevice(n)
			xml.append(o.to_xml())

		xml.append("</devices>")
		self.send_response(string.join(xml, ''))

	def next_event(self, doc):
		"""Returns an xml document containing the next event"""
		print "EVENT! doc=", doc, "\n"
		# This function typically blocks...
		attrs = doc.attributes
		a = attrs.get("overloaded")
		if a and a.nodeValue == "true":
			while True:
				e = self.listener.next_event()
				if isinstance(e, FingerDrag):
					# When we're overloaded, ignore all
					# FingerDrag events
					continue
				if isinstance(e, MidiEvent) and isinstance(e.midimsg, ChanMsg):
					if e.midimsg.channel != 16:
						# We're overloaded, so we
						# ignore everything except
						# the MIDI control channel.
						# There should be an API
						# for setting this rather than
						# harcoding 16
						continue
				break
			# print("OVERLOADED IS FINALLY RETURNING e=",e.to_xml())
		else:
			e = self.listener.next_event()

		self.send_response(e.to_xml())
		
class NthClient (asynchat.async_chat):

	def __init__ (self, host, port):
		asynchat.async_chat.__init__ (self)
		self.create_socket (socket.AF_INET, socket.SOCK_STREAM)
		self.terminator = '\0'
		self.connected = False
		self.host = host
		self.port = port
		self.connect((host, port))
		self.buffer = ''

	def collect_incoming_data (self, data):
		self.buffer += data

	def found_terminator (self):
		data = self.buffer
		self.buffer = ''
		self.onData(data)

	def handle_error (self):
		if not self.connected:
			self.onError("Unable to connect to %s:%d" % (self.host, self.port))
		else:
			self.onError("Unknown error in handle_error")
		self.handle_close()

	def handle_expt (self):
		self.handle_error()

	def handle_close (self):
		self.onClose()
		self.close()

	def handle_connect (self):
		self.connected = True
		self.onConnect()

	def push(self, data):
		"pushes data to the server, null termination is automatic"
		asynchat.async_chat.push(self, data + self.terminator)

class NthClientThread(Thread):

	def __init__(self):
		Thread.__init__(self)
		self.setDaemon(True)

	def run(self):
		try:
			asyncore.loop()
		except asyncore.ExitNow:
			# normal exit
			print("NthClientThread got asyncore.ExitNow!!")
			pass
		except:
			print("Unexpected exception in asyncore.loop()")

class NthCommandClient(NthClient):

	def __init__(self, host, port, cmd, pretty=False):
		NthClient.__init__(self, host, port)
		self.done = False
		self.cmd = cmd
		self.pretty = pretty

	def onError (self, msg):
		print "NthCommandClient error: ", msg
		raise asyncore.ExitNow
	   
	def onConnect (self):
		print "Connected..."
		try:
			self.push(str(self.cmd))
		except:
			print("Exception in push: " + format_exc())

	def onClose (self):
		print "NthCommandClient: closed prematurely?"
		raise asyncore.ExitNow

	def onData (self, data):
		try:
			x = xmldom.parseString(data)
			if self.pretty:
				print(x.toprettyxml())
			else:
				print(x.toxml())
		except:
			print "ERROR in parsing xml: %s" % format_exc()
			print "Raw data was: %s" % data
		self.done = True


class NthMonitorClient(NthClient):

	def __init__(self, host, port):
		print "NthMonitorclient host=", host, " port=", port
		NthClient.__init__(self, host, port)

	def onError (self, msg):
		print "NthMonitorClient error: ", msg
		raise asyncore.ExitNow
	   
	def onConnect (self):
		print "Connected..."
		self.push("<next_event/>")

	def onClose (self):
		print "NthMonitorClient closed"
		raise asyncore.ExitNow

	def onData (self, data):
		try:
			x = xmldom.parseString(data)
		except:
			print "ERROR in parsing data=", data, " : ", format_exc()
			return

		recognized = ("device", "devices", "error")

		if x.documentElement.tagName == "event":
			print data
			self.push("<next_event/>")
		elif x.documentElement.tagName in recognized:
			print data
		else:
			print "UNRECOGNIZED = ", x.toxml()


############################################################################

def doNthCommand(host, port, cmd):
	cc = NthCommandClient(host, port, cmd)
	t = NthClientThread()
	t.start()
	while True:
		if cc.done:
			break
		if not t.isAlive():
			break
		try:
			t.join(2.0)
		except KeyboardInterrupt:
			print "GOT KEYBOARD INTERRUPT!"
			break

def main():
	# if len(sys.argv) < 2:
	#	print 'Usage: %s host port {cmd} ...' % sys.argv[0]
	#	sys.exit(0)

	debug = True
	fullscreen = False
	httpaddr = "127.0.0.1"
	httpport = 7777
	midievents = ".*"
	midiforward = None
	fingerforward = None
	fingerorder = "0123"
	midiin = ".*Trigger.*"
	midiout = None
	rootdir = None 
	fingertype = "raw"
	processor = "NthEventProcessor"
	cmd = "server"

	print "SYS.ARGV len=", len(sys.argv)
	argn = len(sys.argv)
	if len(sys.argv) == 1:
		print "NO arguments..."
	else:
		argn = 1
		if sys.argv[argn] == "-d":
			debug = True
			print "Debug is True"
			argn += 1
		else:
			debug = False
	
		if sys.argv[argn] == "-f":
			fullscreen = True
			argn += 1
		else:
			fullscreen = False

		cmd = sys.argv[argn]
		argn += 1

		for i in range(argn, len	(sys.argv)):
			a = sys.argv[i]
			print("a = ", a)
			if a.startswith("midievents:"):
				midievents = a[11:]
			elif a.startswith("midiforward:"):
				midiforward = a[12:]
			elif a.startswith("fingerforward:"):
				fingerforward = a[14:]
			elif a.startswith("fingerorder:"):
				fingerorder = a[12:]
			elif a.startswith("midiin:"):
				midiin = a[7:]
			elif a.startswith("midiout:"):
				midiout = a[8:]
			elif a.startswith("rootdir:"):
				rootdir = abspath(a[8:])
			elif a.startswith("httpaddr:"):
				httpaddr = a[9:]
			elif a.startswith("httpport:"):
				httpport = int(a[9:])
			elif a.startswith("fingertype:"):
				fingertype = a[11:]
			elif a.startswith("processor:"):
				processor = a[10:]

	if cmd == "server" or cmd == "daemon":

		server = NthServer(httpaddr=httpaddr,
				httpport=httpport,
				midiin=midiin,
				midiout=midiout,
				rootdir=rootdir,
				fingertype=fingertype,
				processor=processor)

		# The syntax of a midiforward value is like ".*6>.*7"
		if midiforward:
			for i in midiforward.split(","):
				k = i.split(">")
				server.set_midi_forward(k[0], k[1])

		if fingerforward:
			server.set_finger_forward(fingerforward)

		# The finger_order hack allows the caller
		# of the server to adjust the devindex values
		# returned for finger events
		server.set_finger_order(fingerorder)

		if midievents:
			server.set_midi_events(midievents)

		try:
			t = NthServerThread()
			t.start()

			import os
			position = (-800, 0)
			position = (600, 360)
			os.environ['SDL_VIDEO_WINDOW_POS'] = str(position[0]) + "," + str(position[1])

			pygame.init()

			if fullscreen:
				# width = 1024
				# height = 600
				width = 480
				height = 800
				flags = pygame.SRCALPHA | pygame.FULLSCREEN
			else:
				width = 800
				height = 480
				flags = pygame.SRCALPHA

			from panel import NthControlPanel
			ui = NthControlPanel(width, height, flags, server)
			
			if LoopyAutoStart:
				os.system("loopykill.bat")
				os.system("loopystart.bat")

			# print "NEW SLEEP FOR 60 SECONDS!"
			time.sleep(1.0)
			
			try:
				ffff = Ffff("localhost", 4444, 4445)
			except:
				print "EXCEPT caught in creating Ffff!  Exception=", format_exc()
				sys.exit()
				
			os.system("loopyactivate.bat")
			time.sleep(1.0)
			# pygame.event.set_grab(True)
			
			ffff.set_ui(ui)
			ui.set_ffff(ffff)
			server.server.set_processor(ui)
			server.set_ui(ui)
			ffff.refresh()
			
			ui.send_all_values()
			
			try:
				ui.start()
			except:
				print "EXCEPT caught in ui.start Exception=", format_exc()
				
			try:
				ui.shutdown()
			except:
				print "EXCEPT caught in ui.shutdown!"
				
			if LoopyAutoStart:
				os.system("loopykill.bat")
				
			server.shutdown_quick()
			t.join()	# wait for it to shutdown

			print("NthServer has finished")

		except KeyboardInterrupt:
			print("KeyboardInterrupt received...\n");
			server.shutdown_quick()
		except:
			s = format_exc()
			if not re.search(".*shutdown_quick.*", s):
				print("Exception while running myserver?\n");
				print(s)
			server.shutdown_quick()

	elif cmd == "monitor":

		m = NthMonitorClient(httpaddr, httpport)
		t = NthClientThread()
		t.start()
		while True:
			if not t.isAlive():
				break
			try:
				t.join(1.0)
			except KeyboardInterrupt:
				print "GOT KEYBOARD INTERRUPT!"
				break

	elif cmd == "read_file" or cmd == "list_dir":
		if len(sys.argv) < argn:
			dir = "."
		else:
			dir = sys.argv[argn]
		name = saxutils.escape(dir)
		doNthCommand(httpaddr, httpport,
			"<" + cmd + "><name>" + name + "</name></" + cmd + ">")

	elif cmd == "write_file":
		fname = saxutils.escape(sys.argv[argn])
		argn += 1
		data = saxutils.escape(sys.argv[argn])
		doNthCommand(httpaddr, httpport,
			"<write_file><name>" + fname + "</name><data>" + data + "</data></write_file>")

	elif cmd == "midi_playfile":
		fname = saxutils.escape(sys.argv[argn])
		doNthCommand(httpaddr, httpport,
			"<midi_playfile><name>" + fname + "</name></midi_playfile>")

	elif cmd == "write_midi":
		xx = sys.argv[argn]
		doNthCommand(httpaddr, httpport, "<write_midi>" + xx + "</write_midi>")

	elif cmd == "shutdown" or \
		cmd == "list_midi_inputs" or \
		cmd == "list_midi_outputs" or \
		cmd == "list_devices":

		doNthCommand(httpaddr, httpport,
			"<" + cmd + "/>")

	else:
		print "Unrecognized command: ", cmd

if __name__ == '__main__':
	main()
	# import cProfile
	# cProfile.run('main()')
