instance creation
createNotification: notification titled: aTitle forApp: appName 
	^ UDSnarlNotification basicNew initialize
		timeout: 10;
		notification: notification;
		title: aTitle;
		appName: appName