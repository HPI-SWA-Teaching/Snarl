api-registration
addClass: aClass withTitle: aTitle toApp: appName
	self sendRawCommand: '#?action=register#?app=', appName .