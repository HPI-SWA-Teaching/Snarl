API
notify: aTitle with: aText
| Notificationclass |
	
	(mode = #extern) ifTrue:
		[Notificationclass := Snarl externalNotificationClass].
	(mode = #intern) ifTrue:
		[Notificationclass := SnarlNotificationIntern].
	(Notificationclass isNil) ifTrue:
		[Notificationclass := SnarlNotificationIntern.
		self error: 'Plattform wird nicht unterstützt.']
		