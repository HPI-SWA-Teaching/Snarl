documentation
example
	"self example"
	| client notification applicationName |
	applicationName := 'SystemtMonitoring'.
	client := self 
		onHost: 'localhost'
		port: 9887.
	client registerApp: applicationName.
	client 
		addClass: 'IssueClass'
		withTitle: 'Issue Title'
		toApp: applicationName.
	notification := UDSnarlNotification 
		createNotification: 'Calc down'
		titled: 'Problem'
		forApp: applicationName.
	client sendNotification: notification beSticky.
	client sendNotification: (notification timeout: 5).
	client sendNotification: (notification
			notificationClass: 'IssueClass';
			timeout: 10).
	client 
		sendSimpleNotification: 'Hello World'
		toApp: applicationName.
	client unregisterApp: applicationName.
	client close