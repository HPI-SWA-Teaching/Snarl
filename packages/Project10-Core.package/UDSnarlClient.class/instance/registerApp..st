api-registration
registerApp: appName
	self sendRawCommand: '#?action=register#?app=', appName .