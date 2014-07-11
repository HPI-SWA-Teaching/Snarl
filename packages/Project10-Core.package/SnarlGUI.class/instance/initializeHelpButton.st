initialization
initializeHelpButton
	| test help|
	
	test := SimpleButtonMorph new label: 'Test'.
	test color: self defaultColor; width: self width / 2 -20;
	left: modeButton left; top: switch bottom + 5.
	test on: #mouseDown send: #value to: [Snarl notifyWithLabel: 'Test' body: 'This is a test' type: #Information. ].
	self addMorph: test.
	
	help := SimpleButtonMorph new label: 'Help'.
	help color: self defaultColor; width: self width / 2 -20;
	left: test right +10; top: switch bottom + 5.
	help on: #mouseDown send: #value to: [self openHelp].
	self addMorph: help.