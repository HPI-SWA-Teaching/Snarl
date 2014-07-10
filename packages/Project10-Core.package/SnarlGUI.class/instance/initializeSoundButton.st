initialization
initializeSoundButton
	|sideLength distanceWindowToSoundButton distanceTitleToSoundButton|
	
	sideLength := self imageSize x + 10.
	distanceWindowToSoundButton := 10.
	distanceTitleToSoundButton := 5.
	
	soundButton := SimpleButtonMorph new label: ''.
	Snarl soundIsOn
		ifTrue:  [soundButton color: (Color r:0.2 g: 0.7 b:0.1)]
		ifFalse: [soundButton color: (Color r:0.7 g:0.3 b:0.1)].
	soundButton width: sideLength; height: sideLength.
	soundButton left: self left + distanceWindowToSoundButton.
	soundButton top: title bottom + distanceTitleToSoundButton.
	self initializeSoundImages.
	soundButton on: #mouseDown send: #value to: [self toggleSound].
	self addMorph: soundButton.