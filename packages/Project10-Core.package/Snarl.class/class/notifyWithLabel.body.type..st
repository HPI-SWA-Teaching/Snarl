API
notifyWithLabel: aLabel body:aBody type: aType
| Notificationclass |
	(self isTurnedOn) 
		ifFalse: [^true].
	(mode = #external) 
		ifTrue: [Notificationclass := Snarl externalNotificationClass].
	(mode = #internal) 
		ifTrue: [Notificationclass := SnarlNotificationIntern].
	^Notificationclass notifyWithLabel: aLabel body: aBody type: aType. 