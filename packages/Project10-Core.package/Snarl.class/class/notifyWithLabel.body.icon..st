API
notifyWithLabel: aLabel body:aBody icon: iconType
| Notificationclass |
	(self turnedOn) ifFalse: [^true].
	(mode = #external) ifTrue:
		[Notificationclass := Snarl externalNotificationClass].
	(mode = #internal) ifTrue:
		[Notificationclass := SnarlNotificationIntern].
	(Notificationclass isNil) ifTrue:
		[Notificationclass := SnarlNotificationIntern.
		self error: 'Plattform wird nicht unterstützt.'].
	^Notificationclass notifyWithLabel: aLabel body: aBody icon: iconType. 