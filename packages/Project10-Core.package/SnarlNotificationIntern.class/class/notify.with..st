as yet unclassified
notify: aTitle with: aText
	(SnarlNotificationMorph new label: aTitle body: aText) display.
	self playSound.