from nosuch.oscutil import *

class FFplugin:
	def __init__(self,name):
		self.name = name

class Ffff(Thread):

	def __init__(self,host,sendport,listenport):

		self.ffplugins = {}
		self.ffglplugins = {}
		self.loops = {}

		self.registered = 0

		Thread.__init__(self)
		self.host = host
		self.sendport = sendport
		self.listenport = listenport
		self.toffff = None
		self.registered = False
		self.fromffff = OscMonitor(self.host,self.listenport,proto="tcp")
		self.toffff = OscRecipient(self.host,self.sendport,proto="tcp")
		self.fromffff.callback(self.ffffcallback)

		self.send("/.ping",[])
		# self.setDaemon(True)
		# self.start()

	def ffffcallback(self,ev,d):
		msg = ev.oscmsg
		print "SELF.FFFF Callback! ev=",ev," d=",d," msg[0]=",msg[0]
		ffprefix = "/ffff/ff/"
		replyprefix = "/.reply"
		a = msg[0]
		args = msg[2:]
		if a.startswith(ffprefix):
			nm = a[len(ffprefix):]
			print "nm=",nm
			if nm in self.ffplugins:
				print "Already a plugin named: ",nm
				ff = self.ffplugins[nm]
			else:
				ff = FFplugin(nm)
				self.plugins[nm] = ff
		elif a.startswith(replyprefix):
			print "reply! addr=",msg[1]
			if args[0] == "/.register":
				print "REGISTERED!!"
				self.registered = time.time()
			if args[0] == "/.list" and args[1] == "/ffff/ff":
				for n in range(2,len(args)):
					nm = args[n]
					print "FFPLUGIN = ",nm
					self.toffff.sendosc("/ffff/ff/"+nm)
			elif args[0] == "/.list" and args[1] == "/ffff/ffgl":
				for n in range(2,len(args)):
					print "FFGLPLUGIN = ",args[n]

	def run(self):
		# someday this may be needed
		while True:
			self.send("/.ping",[])
			time.sleep(2.0)
		return

	def error_isalive(self):
		print "Error sending to %s:%d - is it alive?" % (self.host,self.sendport)
		# print "Error sending to %s:%d - %s" % (self.host,self.sendport,format_exc())

	def refresh(self):
		print "FFFF refresh!"
		try:
			self.toffff.sendosc("/.register",[self.listenport])
			self.toffff.sendosc("/.list",["/ffff/ff"])
			self.toffff.sendosc("/.list",["/ffff/ffgl"])
			self.toffff.sendosc("/.list",["/ffff/preplugin"])
			self.toffff.sendosc("/.list",["/ffff/postplugin"])
		except:
			self.error_isalive()

	def send(self,addr,msg=None):
		if msg == None:
			msg = []
		print "Trying to send addr=",addr," msg=",msg
		try:
			if not self.registered:
				print "REFRESHING!"
				# self.refresh()
				self.toffff.sendosc("/.register",[self.listenport])
				# self.toffff.sendosc("/ffff/preplugin/0",[])
				self.registered = True

			self.toffff.sendosc(addr,msg)
		except:
			self.error_isalive()
			self.registered = False
