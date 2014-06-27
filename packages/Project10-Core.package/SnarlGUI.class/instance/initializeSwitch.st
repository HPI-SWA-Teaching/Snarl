initialization
initializeSwitch
	|switchImage sideLength distanceSwitchButtonToModeButton|
	
	switchImage:= ImageMorph new newForm: (images at: 'standby').
	sideLength := switchImage width + 10.
	distanceSwitchButtonToModeButton :=5.
	
	switch := SimpleButtonMorph new label: ''.
	Snarl turnedOn 
		ifTrue: [switch color: (Color r: 0.2 g: 0.7 b:0.1).]
		ifFalse: [switch color: (Color r:0.7 g:0.3 b:0.1).].
	switch width: sideLength; height: sideLength.
	switch left: modeButton left.
	switch top: modeButton bottom + distanceSwitchButtonToModeButton.
	switchImage center: (switch center).
	switch addMorph: switchImage.
	switch on: #mouseDown send: #value to: [self toggleSwitch].
	self addMorph: switch.