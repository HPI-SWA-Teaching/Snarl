as yet unclassified
mouseDown: evt
	super mouseDown: evt.
	evt yellowButtonPressed ifTrue: [^ self].
	clickAction ifNotNil: [clickAction valueWithPossibleArgs: { self }].