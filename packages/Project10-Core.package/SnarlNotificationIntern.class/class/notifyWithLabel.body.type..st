as yet unclassified
notifyWithLabel: aTitle body: aText type: aType
	self ensureExistance.
	(SnarlNotificationMorph new label: aTitle body: aText type: aType) display.
	self playSound.