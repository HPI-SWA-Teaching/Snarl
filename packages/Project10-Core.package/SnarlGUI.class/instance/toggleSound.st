action
toggleSound 
	Snarl toggleSound.
	Snarl soundIsOn 
		ifTrue: [	soundOffImage hide. 
				soundOnImage show.
				soundButton color: self colorGreen]
		ifFalse: [soundOnImage hide. 
				soundOffImage show.
				soundButton color: self colorRed].
