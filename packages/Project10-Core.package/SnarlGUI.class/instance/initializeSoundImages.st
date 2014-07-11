initialization
initializeSoundImages
	
	soundOnImage := images at: 'speaker'.
	soundOffImage := images at: 'mute'.
	soundOnImage center: (soundButton center).
	soundOffImage center: (soundButton center).
	soundButton addMorph: soundOnImage; addMorph: soundOffImage.
	
	Snarl soundIsOn 
		ifTrue: [soundOffImage hide]
		ifFalse: [soundOnImage hide].