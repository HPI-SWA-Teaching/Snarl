as yet unclassified
label: label
	turnedOn 
	ifTrue: 
		[^ self notification label: label; notifyWithSound: soundOn]
	ifFalse:
		[^ nil]
	