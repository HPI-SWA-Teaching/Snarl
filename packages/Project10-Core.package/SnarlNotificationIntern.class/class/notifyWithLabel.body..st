as yet unclassified
notifyWithLabel: aTitle body: aText
	(SnarlNotificationMorph new label: aTitle body: aText) display.
	self playSound.