api-actions-convenience
sendSimpleNotification: aString toApp: appName
	^ self sendCommand: ((self class notificationModel) createNotification: aString  titled: '' forApp: appName). 
