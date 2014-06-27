initialization
initializeModeButton
	
	|sideLength distanceSoundButtonToModeButton|
	
	sideLength := ((images at: 'external') width +10).
	distanceSoundButtonToModeButton := 5.
	modeButton := SimpleButtonMorph new label: ''.
	modeButton color: self defaultColor.
	modeButton width: sideLength; height: sideLength.
	modeButton left: soundButton left.
	modeButton top: soundButton bottom + distanceSoundButtonToModeButton.
	self initializeModeImages.
	modeButton on: #mouseDown send: #value to: [self toggleMode].
	self addMorph: modeButton.