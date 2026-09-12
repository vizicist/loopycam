from threading import Thread

from nosuch.fingerutil import *
from nosuch.oscutil import *


class BaseEvent:
	def __init__(self):
		self.time = 0.0


class NthEventProcessor:
	def __init__(self, server):
		self.server = server
		self.last_finger_event = {}

	def process(self, ev):
		print "NthEventProcessor ev=", ev
		server = self.server
		if isinstance(ev, FingerEvent):
			ev.time -= server.finger_timezero
			eventit = True

			i = ev.devindex
			if i <= 3:
				ev.devindex = ord(server.finger_order[i]) - ord("0")

			if isinstance(ev, FingerDrag):
				if ev.uid in self.last_finger_event:
					dt = ev.time - self.last_finger_event[ev.uid].time
					if dt < server.throttle:
						print "Drag too close in time!"
						eventit = False

			if eventit:
				server.broadcast_event(ev)
				if len(server.osc_recipients) > 0:
					if server.do_frets:
						server._send_osc_string_event(ev)
					else:
						server._send_osc_event(ev)
				self.last_finger_event[ev.uid] = ev

		elif isinstance(ev, OscEvent):
			print "Got OscEvent in _push_event ev=", ev
			if not self.process_osc_registerclient(ev):
				ev.time -= server.osc_timezero
				server.broadcast_event(ev)
		else:
			print "Unknown event type in _push_event!? ev=", ev

	def process_osc_registerclient(self, ev):
		m = ev.oscmsg
		if m[0] == "/registerclient":
			if m[1] != ",si":
				print "Unexpected type signature for /registerclient?"
			else:
				self.server.add_osc_recipient(m[2], int(m[3]))
			return True
		elif m[0] == "/unregisterclient":
			if m[1] != ",si":
				print "Unexpected type signature for /unregisterclient?"
			else:
				self.server.remove_osc_recipient(m[2], int(m[3]))
			return True
		return False

	def send_osc(self, o):
		print "send_osc, o=%s" % (o.__str__())
		self.server.send_osc(o)


class TemplateEventProcessor(NthEventProcessor):
	def process(self, ev):
		if isinstance(ev, FingerEvent):
			pass
		elif isinstance(ev, OscEvent):
			pass


class FreeFrameEventProcessor(NthEventProcessor):
	def process(self, ev):
		print "HI from FreeFrameEventProcessor!  ev=", ev


class PrintEventProcessor(NthEventProcessor):
	def process(self, ev):
		print "PrintEventProcessor: ", ev
		NthEventProcessor.process(self, ev)
