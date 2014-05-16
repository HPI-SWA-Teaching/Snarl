as yet unclassified
body: body
	turnedOn 
	ifTrue:
		[^ self notification body: body; display]
	ifFalse:
		[^ nil]