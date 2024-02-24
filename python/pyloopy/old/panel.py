import sys
import pygame
import os
import random
import string
 
from traceback import format_exc

from nthdisplay import *
from nthdraw import *

try:
	import pygame
	from pygame.locals import *
except ImportError, err:
	print "%s failed to load module: %s" % (__file__, err)
	import sys
	sys.exit(1)

from nthprocess import NthEventProcessor, BaseEvent

from nosuch.fingerutil import *
from nosuch.midiutil import *
from nosuch.oscutil import *

class ButtonEvent(BaseEvent):
	def __init__(self,s):
		BaseEvent.__init__(self)
		self.name = s

class NthControlPanel(NthEventProcessor):

	def __init__(self,width,height,flags,server,ffff):

		self.save_dir = "."

		self.debug = False
		self.color = Color("black")
		self.bgcolor = Color(0xff,0xcc,0x66)
		NthDrawable.set_default_bgcolor(self.bgcolor)
		self.bgdarker = self.darker(self.bgcolor)
		self.highcolor = Color(255,100,100)
		self.alertcolor = Color(255,0,0)
		self.bgarrows = Color("white")
		self.ffff = ffff

		self.screen = pygame.display.set_mode((width,height))

		self.dlist = NthDisplayList(self.screen,bgcolor=self.bgcolor)

		self.steps_per_beat = 4
		self.max_loop_width = 250
		self.max_loop_steps = 32 * self.steps_per_beat
		self.step_width = float(self.max_loop_width) / self.max_loop_steps
		# print "step_width = ",self.step_width

		pygame.display.set_caption('NthControl')

		self.save_primed = False
		self.server = server

		self.width = width
		self.height = height

		self.curr_page = 0

		self.next_control_num = 0

		# sz = (int(width*0.1),int(height*0.1))
		# b = NthButton(Rect((0,0),sz),"Hello")
		# self.add(b,offset=(10,10))
		# self.ui_mode_widget = b
		# b.set_callback(self.toggle_ui_mode,(0,0))

		self.linesz = height / 21

		pwidth = int(width*0.25)

		sz = (pwidth,int(height))
		offset = (0,0)
		self.global_pane(sz,offset)

		sz = (pwidth,int(height))
		offset = (pwidth*2,0)
		self.preset_pane(sz,offset)

		sz = (pwidth,int(height))
		offset = (pwidth,0)
		self.param_pane(sz,offset)

		sz = (pwidth,int(height))
		offset = (pwidth*3,0)
		self.controller_pane(sz,offset)

		return

	def global_pane(self,sz,offset):

		# b = NthRect(Rect((0,0),(sz)))
		# b.set_color(self.bgdarker)
		# self.add(b,offset=offset)

		th = self.linesz
		b = NthButton(Rect((0,0),(sz[0],th)),"Global")
		self.add(b,offset=offset)

		b = NthText(Rect((0,0),(sz[0],th)),"FF Pre",border=False,bgcolor=self.bgdarker)
		self.add(b,offset=(0,th))

		bsz = (sz[0]/2,th)
		xoff = sz[0]*0.1
		for n in range(3):
			y = (n+2)*th

			b = NthText(Rect((0,0),(xoff,th)),"%d" % n,border=True)
			self.add(b,offset=(0,y))

			b = NthButton(Rect((0,0),bsz),"None")
			self.add(b,offset=(xoff,y))

		b = NthText(Rect((0,0),(sz[0],th)),"Loops",border=False,bgcolor=self.bgdarker)
		self.add(b,offset=(0,5*th))

		bsz = (sz[0]/2,th)
		xoff = sz[0]*0.1
		for n in range(8):
			y = (n+6)*th

			b = NthText(Rect((0,0),(xoff,th)),"%d" % n,border=False)
			self.add(b,offset=(0,y))

			b = NthButton(Rect((0,0),bsz),"None")
			self.add(b,offset=(xoff,y))

		b = NthText(Rect((0,0),(sz[0],th)),"FF Post",border=False,bgcolor=self.bgdarker)
		self.add(b,offset=(0,14*th))

		bsz = (sz[0]/2,th)
		xoff = sz[0]*0.1
		for n in range(3):
			y = (n+15)*th

			b = NthText(Rect((0,0),(xoff,th)),"%d" % n,border=False)
			self.add(b,offset=(0,y))

			b = NthButton(Rect((0,0),bsz),"None")
			self.add(b,offset=(xoff,y))

		b = NthText(Rect((0,0),(sz[0],th)),"FFGL",border=False,bgcolor=self.bgdarker)
		self.add(b,offset=(0,18*th))

		bsz = (sz[0]/2,th)
		xoff = sz[0]*0.1
		for n in range(3):
			y = (n+19)*th

			b = NthText(Rect((0,0),(xoff,th)),"%d" % n,border=False)
			self.add(b,offset=(0,y))

			b = NthButton(Rect((0,0),bsz),"None")
			self.add(b,offset=(xoff,y))

	def param_pane(self,sz,offset):

		b = NthRect(Rect((0,0),(sz)))
		b.set_color(self.bgdarker)
		self.add(b,offset=offset)

		th = self.linesz
		b = NthButton(Rect((0,0),(sz[0],th)),"Parameters")
		self.add(b,offset=offset)

	def controller_pane(self,sz,offset):

		b = NthRect(Rect((0,0),(sz)))
		b.set_color(self.bgdarker)
		self.add(b,offset=offset)

		th = self.linesz
		b = NthButton(Rect((0,0),(sz[0],th)),"Controller")
		self.add(b,offset=offset)

		b = NthButton(Rect((0,0),(sz[0]/2,th)),"Refresh")
		self.add(b,offset=(offset[0]+sz[0]/4,offset[1]+2*th))
		b.set_callback(self.control_refresh,0)

	def control_refresh(self,arg1,arg2):
		print "CONTROL refresh... arg1=",arg1," arg2=",arg2
		self.ffff.refresh()

	def preset_pane(self,sz,offset):

		b = NthRect(Rect((0,0),(sz)))
		b.set_color(self.bgdarker)
		self.add(b,offset=offset)

		th = self.linesz
		b = NthButton(Rect((0,0),(sz[0],th)),"Presets")
		self.add(b,offset=offset)

		w = sz[0]/2
		h = int((sz[1]-10)/16)
		n = 1
		npresets = 8
		for r in range(0,npresets):
			y = th + 2 + r * h
			for c in range(0,2):
				if r >= (npresets/2):
					ptype = "m"
					apptype = "music"
					pn = n - npresets
				else:
					ptype = "g"
					apptype = "graphic"
					pn = n
				blabel = "%s%d"%(ptype,pn)
				b = NthButton(Rect(c*w,y,w-2,h-2),blabel)
				b.set_color(self.color)
				b.set_bgcolor(self.bgcolor)
				fn = self.file_for(n,ptype)
				b.set_callback(self.preset_button_down,(fn,b,apptype))
				b.set_callback_up(self.preset_button_up,(b))
				self.add(b,offset=offset)
				n += 1

		y = th + 2 + npresets * h
		b = NthButton(Rect(0,y,sz[0]-3,h),"SAVE",bgcolor=self.bgcolor)
		b.set_callback(self.preset_save_down,b)
		self.add(b,offset=offset)
		self.preset_save = b

	def addrandrect(self):
		r = random.randint(0,255)
		g = random.randint(0,255)
		b = random.randint(0,255)
		l = random.randint(0,self.width)
		t = random.randint(0,self.height)
		w = 2+random.randint(0,self.width/4)
		h = 2+random.randint(0,self.height/4)
		color = Color(r,g,b,255)
		if random.randint(0,1) < 10:
			nr = NthRect(Rect(l,t,w,h))
			nr.color = color
			self.dlist.add(nr)
		else:
			nr = NthRect(Rect(l,t,w,h))
			nr.color = color
			self.dlist.add(nr)
		print "dlist size is ",self.dlist.numitems()

	def refresh(self):
		# print "control REFRESH"
		self.dlist.refresh()

	def button_of_size(self,s,sz):
		bl = Label(s)
		bl.create_style()["font"]["size"] = sz
		b = Button()
		b.set_child(bl)
		return b

	def controlbutton(self,s):
		bl = Label(s)
		bl.create_style()["font"]["size"] = 20
		b = ToggleButton()
		b.set_child(bl)
		return (b,bl)

	def bigbutton(self,s,size=30):
		bl = Label(s)
		bl.create_style()["font"]["size"] = size
		b = Button(s)
		b.set_child(bl)
		b.minsize = 40,40
		return (b,bl)

	def biglabel(self,s):
		lbl = Label (s)
		lbl.create_style()["font"]["size"] = 20
		return lbl

	def preset_save_down(self,b,button):
		if self.save_primed:
			self.save_primed = False
			color = self.bgcolor
		else:
			self.save_primed = True
			color = self.highcolor
		b.set_bgcolor(color)

	def preset_button_up(self,b):
		b.set_bgcolor(self.bgcolor)

	def preset_button_down(self,data,button):
		fn = data[0]
		b = data[1]
		apptype = data[2]
		b.set_bgcolor(self.highcolor)
		if self.save_primed:
			self.save_primed = False
			self.save_file(fn,apptype)
			self.preset_save.set_bgcolor(self.bgcolor)
		else:
			self.refresh()
			self.load_file(fn,apptype)

	def add(self,item,offset=None):
		self.dlist.add(item,offset=offset)

	def darker(self,color):
		return (color[0]-40,color[1]-40,color[2]-40)

	def top_pane_visible(self,vis):
		for b in self.topwidgets:
			b.visible = vis

# 	def toggle_ui_mode(self,v,a):
# 		if self.ui_mode == "Grid":
# 			self.ui_mode = "Vals"
# 		else:
# 			self.ui_mode = "Grid"
# 		self.set_ui_mode()
# 
# 	def set_ui_mode(self):
# 		self.ui_mode_widget.set_text(self.ui_mode)
# 		self.ui_mode_widget.set_bgcolor(self.bgcolor)
# 
# 		self.refresh()
# 
# 	def ui_mode_pane(self,sz,offset):
# 
# 		pmsz = (int(sz[1]),int(sz[1]))
# 
# 		b = NthButton(Rect((0,0),pmsz),"Grid")
# 		b.set_callback(self.toggle_ui_mode,"")
# 		self.add(b,offset=offset)
# 		self.ui_mode_widget = b
# 
# 		return

	def message(self,msg):
		print "MSG: ",msg

	def start(self):
		running = True
		self.clock = pygame.time.Clock()

		# Try to do 60 updates per second
		msperframe = 1000 / 60
		while running:
			t0 = pygame.time.get_ticks()
			running = self.handleEvents()
			self.dlist.paint()
			pygame.display.flip()
			t1 = pygame.time.get_ticks()
			dt = t1 - t0
			if dt > (2*msperframe):
				print "Falling behind! dt=",dt
			pygame.time.wait(msperframe-dt)
		return

	def handleEvents(self):
		for event in pygame.event.get():
			# print "pygame event = ",event
			if event.type == QUIT:
				return False
			elif event.type == KEYDOWN:
				if event.key == K_ESCAPE:
					return False
			elif event.type == MOUSEBUTTONDOWN or event.type == MOUSEBUTTONUP or event.type == MOUSEMOTION:
				self.dlist.mouse_event(event)
		return True

	def file_for(self,n,ptype):
		return os.path.join(self.save_dir,"preset_%s%02d.np" % (ptype,n))

	def save_file(self, fn,apptype):
		print "SAVE_FILE fn=",fn
		# f = open(fn,"wb")
		# f.close()

	def load_file (self, fn,apptype):
		self.message("LOAD_FILE fn=%s" % fn)
		return
		try:
			f = open(fn,"rb")
			for line in f.readlines():
				words = string.split(line)
				if len(words) != 3:
					print "Hey, not 3 words? line=",line
			f.close()
		except:
			self.message("Error in loading: %s" % format_exc())

	def button_delta(self,button):
		if button == 1:
			return -1
		else:
			return 1

	def process(self,ev):
		if isinstance(ev,MidiEvent):
			self.process_midi(ev)
		elif isinstance(ev,OscEvent):
			# print "Got OscEvent in _push_event ev=",ev
			self.process_osc(ev)
			# if not self.process_osc_registerclient(ev):
			# 	ev.time -= server.osc_timezero
			# 	server.broadcast_event(ev)
		elif isinstance(ev,FingerEvent):
			print "FingerEvent ev=",ev
		else:
			print "Unknown event type in process!? ev=",ev

	def process_osc(self,ev):
		o = ev.oscmsg
		addr = o[0]
		print "process_osc addr=",addr," o=",o

	def process_midi(self,ev):
		# print "Midi event time=",time.time()
		# ev.time -= server.midi_timezero
		# See if it's one we should forward or event
		m = ev.midimsg
		print "Got MidiEvent ev=",ev,"  device=",m.device.name


