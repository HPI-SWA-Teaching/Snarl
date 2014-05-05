private-action
sendRawCommand: command
	self socket sendCommand: self header, command .
	self processResponse.