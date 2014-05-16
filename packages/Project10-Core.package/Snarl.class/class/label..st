as yet unclassified
label: label
	turnedOn 
	ifTrue: 
		[^ self notification label: label; display]
	ifFalse:
		[^ nil]
	