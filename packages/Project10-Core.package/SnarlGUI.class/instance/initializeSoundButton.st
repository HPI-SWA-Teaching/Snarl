initialization
initializeSoundButton
	|sideLength distanceWindowToSoundButton distanceTitleToSoundButton|
	
	sideLength := self imageSize x + 10.
	distanceWindowToSoundButton := 10.
	distanceTitleToSoundButton := 5.
	
	soundButton := SimpleButtonMorph new label: ''.
	soundButton color: self defaultColor.
	soundButton width: sideLength; height: sideLength.
	soundButton left: self left + distanceWindowToSoundButton.
	soundButton top: title bottom + distanceTitleToSoundButton.
	self initializeSoundImages.
	soundButton on: #mouseDown send: #value to: [self toggleSound].
	self addMorph: soundButton.