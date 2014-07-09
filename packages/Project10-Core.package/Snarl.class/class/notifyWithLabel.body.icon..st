API
notifyWithLabel: aLabel body:aBody icon: iconType
| Notificationclass |
	(self turnedOn) ifFalse: [^true].
	(mode = #external) ifTrue:
		[Notificationclass := Snarl externalNotificationClass].
	(mode = #internal) ifTrue:
		[Notificationclass := SnarlNotificationIntern].
	^Notificationclass notifyWithLabel: aLabel body: aBody icon: iconType. 