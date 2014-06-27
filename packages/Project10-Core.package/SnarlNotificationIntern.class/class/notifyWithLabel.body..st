as yet unclassified
notifyWithLabel: aTitle body: aText
	self ensureExistance.
	(SnarlNotificationMorph new label: aTitle body: aText) display.
	self playSound.