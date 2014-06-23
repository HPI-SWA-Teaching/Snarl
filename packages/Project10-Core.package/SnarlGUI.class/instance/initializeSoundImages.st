initialization
initializeSoundImages
	
	soundOn := ImageMorph new newForm: (images at: 'speaker').
	soundOff := ImageMorph new newForm: (images at: 'mute').
	soundOn center: (soundButton center).
	soundOff center: (soundButton center).
	soundButton addMorph: soundOn; addMorph: soundOff.
	
	Snarl soundIsOn 
		ifTrue: [	soundOff hide]
		ifFalse: [soundOn hide].