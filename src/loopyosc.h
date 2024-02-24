class LoopyOsc : public OscMessageProcessor {

public:
	LoopyOsc(char *host, int port) {
		// _udp = 0;
		_tcp = new NSoscTCP(host,port,this);
		_udp = new NSoscUDP(host,port,this);
	}
	int Listen() {
		int e;
		if ( _tcp ) {
			if ( (e=_tcp->Listen()) != 0 ) {
				NS_debug("Error in _tcp->Listen = %d\n",e);
				return e;
			}
		}
		if ( _udp ) {
			if ( (e=_udp->Listen()) != 0 ) {
				NS_debug("Error in _udp->Listen = %d\n",e);
				return e;
			}
		}
		return 0;
	}
	void Check() {
		if ( _tcp )
			_tcp->Check();
		if ( _udp )
			_udp->Check();
	}
	void UnListen() {
		if ( _tcp )
			_tcp->UnListen();
		if ( _udp )
			_udp->UnListen();
	}
	void ProcessOscMessage( const osc::ReceivedMessage& m);

private:
	NSoscTCP* _tcp;
	NSoscUDP* _udp;

};

extern LoopyOsc* LoopycamOsc;

