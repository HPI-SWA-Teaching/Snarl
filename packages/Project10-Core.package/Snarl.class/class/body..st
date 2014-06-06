as yet unclassified
body: body
	turnedOn 
	ifTrue:
		[^ self notification body: body; notifyWithSound: mute]
	ifFalse:
		[^ nil]