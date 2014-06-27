as yet unclassified
notifyWithLabel: aTitle body: aText icon: iconType
	self ensureExistance.
	(SnarlNotificationMorph new label: aTitle body: aText icon: iconType) display.
	self playSound.