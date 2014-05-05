accessing
socket
	^ socket 
		ifNil: [socket := SocketStream 
					openConnectionToHost: (NetNameResolver addressForName: self host) 
					port: self port.]