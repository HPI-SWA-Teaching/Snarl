as yet unclassified
label: label
	turnedOn 
	ifTrue: 
		[^ self notification label: label; notifyWithSound: mute]
	ifFalse:
		[^ nil]
	