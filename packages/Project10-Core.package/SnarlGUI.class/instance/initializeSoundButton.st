initialization
initializeSoundButton
	|sideLength distanceWindowToSoundButton description|
	
	sideLength := self imageSize x + 10.
	distanceWindowToSoundButton := 10.
		
	soundButton := SimpleButtonMorph new label: ''.
	Snarl soundIsOn
		ifTrue:  [soundButton color: self colorGreen]
		ifFalse: [soundButton color: self colorRed].
	soundButton width: sideLength; height: sideLength;
				   left: self left + distanceWindowToSoundButton;
		              top: title bottom + self distanceBetweenButtons.
	soundButton on: #mouseDown send: #value to: [self toggleSound].
	self initializeSoundImages.
	
	description:= StringMorph new; contents:'Sound on/off'.
	description center: (0@soundButton center y).
	description left: (soundButton right + self distanceButtonToDescription ).
	
	self addMorph: soundButton; addMorph: description.