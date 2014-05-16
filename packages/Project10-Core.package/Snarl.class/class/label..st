as yet unclassified
label: label
	turnedOn 
	ifTrue: 
		[^ self notification label: label; notify]
	ifFalse:
		[^ nil]
	