as yet unclassified
notification
	turnedOn 
	ifTrue:
		[^ SnarlNotificationMorph new]
	ifFalse: 
		[^ nil]