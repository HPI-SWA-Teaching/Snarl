api-registration
unregisterApp: appName
	self sendRawCommand: '#?action=unregister#?app=', appName .