initialization
initializeModeButton
	
	|sideLength description|
	
	sideLength := ((images at: 'external') width +10).
	
	modeButton := SimpleButtonMorph new label: ''.
	modeButton color: self defaultColor;
				  width: sideLength; height: sideLength;
		              left: soundButton left;
				  top: soundButton bottom + self distanceBetweenButtons.
	modeButton on: #mouseDown send: #value to: [self toggleMode].
	self initializeModeImages.
	
	description:= StringMorph new; contents:'Mode extern/intern'.
	description center: (0@modeButton center y).
	description left: (modeButton right + self distanceButtonToDescription ).
	
	self addMorph: modeButton; addMorph: description.