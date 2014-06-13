API
notify: aTitle with: aText
| Notificationclass |
	(self turnedOn) ifFalse: [^true].
	(mode = #extern) ifTrue:
		[Notificationclass := Snarl externalNotificationClass].
	(mode = #intern) ifTrue:
		[Notificationclass := SnarlNotificationIntern].
	(Notificationclass isNil) ifTrue:
		[Notificationclass := SnarlNotificationIntern.
		self error: 'Plattform wird nicht unterstützt.'].
	Notificationclass notify: aTitle with: aText. 