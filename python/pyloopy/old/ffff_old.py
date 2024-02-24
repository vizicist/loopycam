#!/usr/bin/env python

"""
Simple script which plays a vsti synth through a vst effect,
randomizing parameters.
"""

import time
import sys
import random
import math
import pygame
import pickle

import tuio

from nosuch.oscutil import *

from nosuch.midiutil import *
from nosuch.mididebug import *
from nosuch.midipypm import *

from math import sin,pi
from threading import Thread

# Utility functions

print "argv=",sys.argv

class idlethread(Thread):

	def __init__(self):
		self.keepgoing = 1
		self.tracking = tuio.Tracking("127.0.0.1",port=3333)

		self.njoy = pygame.joystick.get_count()
		self.joysticks = []
		for n in range(self.njoy):
			j = pygame.joystick.Joystick(n)
			j.init()
			self.joysticks.append(j)
			print "Created Joystick(",n,")"

		self.clock = pygame.time.Clock()

		Thread.__init__(self)
		# print "IdleThread setDaemon"
		self.setDaemon(True)

	def run(self):
		dt = 0.01
		while self.keepgoing:
			tm = time.time()
			for event in pygame.event.get():
				print "event.type=",event.type
				if event.type == pygame.JOYBUTTONDOWN:
					print "joydown button=",event.button
				elif event.type == pygame.JOYBUTTONUP:
					print "joyup button=",event.button
				elif event.type == pygame.JOYBALLMOTION:
					pass
				elif event.type == pygame.JOYHATMOTION:
					pass
				elif event.type == pygame.JOYAXISMOTION:
					print "joyaxis axis=",event.axis," value=",event.value
			self.check_tuio()
			time.sleep(dt)

	def check_tuio(self):
		self.tracking.update()
		for obj in self.tracking.objects():
			print "obj=",obj
		for obj in self.tracking.cursors():
			print "cursor2D id=",obj.sessionid," xy=",obj.xpos,obj.ypos," source=",obj.source
		for obj in self.tracking.cursors25D():
			print "cursor25D sessionid=",obj.sessionid," xy=",obj.xpos,obj.ypos," source=",obj.source
			fingers[obj.sessionid] = {"x":obj.xpos,"y":obj.ypos}
			# n = int(obj.xpos * 20)

	def stop(self):
		self.keepgoing = 0

# Main script
pygame.init()
screen = pygame.display.set_mode((640,480))
pygame.event.set_grab(True)
g = pygame.event.get_grab()
print "get_grab = ",g

# if len(sys.argv) < 4:
#	print "Usage: ffff ..."
#	print ""
#	print "Set midipitch to 0 to play random notes"
#	sys.exit(1)

fingers = []
for f in range(20):
	fingers.append(None)

def osc_event(ev,data):
	print "OSC callback! ev=",ev," data=",data

def send_midi_onoff(pitch,notelength):
	# Send a MIDI note-on and note-off to the VST synth
	print "sending noteon tm=",time.time()
	synth.send_midi(1,pitch,8000,80)

	try:
		time.sleep(notelength)
	except:
		print "Exception in time.sleep()"
		return

	synth.send_midi(1,pitch,8000,0)

Midi.startup()
m = MidiPypmHardware()
a = m.input_devices()
for nm in a:
	print "Opening input = ",nm
	i = m.get_input(nm)
	i.open()

def print_midi(msg,data):
	print("MIDI = %s" % str(msg))

Midi.callback(print_midi,"dummy")

oscmon = OscMonitor("localhost",1385)
oscmon.callback(osc_event,"")
oscreceiver = OscRecipient("localhost",1386)

ithread = idlethread()
ithread.start()

while True:
	print "Loop top"
	print "get_focused = ",pygame.key.get_focused()
	time.sleep(2.0)

print "LOOP HAS TIMED OUT!"

ithread.stop()

# Stop the audio device
audio.stop()
audio.close()

Midi.shutdown()

sys.exit(0)
