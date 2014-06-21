action
toggleSound 
Snarl toggleSound.
Snarl soundIsOn 
		ifTrue: [	soundOff hide. 
				soundOn show.]
		ifFalse: [soundOn hide. 
				soundOff show].
