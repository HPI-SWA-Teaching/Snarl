private-action
sendCommand: notification
	self socket sendCommand: (self parse: notification) .
	self processResponse.