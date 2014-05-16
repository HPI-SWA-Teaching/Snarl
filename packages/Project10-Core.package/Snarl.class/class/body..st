as yet unclassified
body: body
	turnedOn 
	ifTrue:
		[^ self notification body: body; notify]
	ifFalse:
		[^ nil]