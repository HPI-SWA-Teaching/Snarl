as yet unclassified
body: body
	turnedOn 
	ifTrue:
		[^ self notification body: body; notifyWithSound: soundOn]
	ifFalse:
		[^ nil]