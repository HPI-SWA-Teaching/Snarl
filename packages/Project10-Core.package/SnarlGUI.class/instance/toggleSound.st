action
toggleSound 
Snarl toggleSound.
Snarl soundIsOn 
		ifTrue: [	soundOff hide. 
				soundOn show.
				soundButton color: (Color r: 0.2 g: 0.7 b:0.1)]
		ifFalse: [soundOn hide. 
				soundOff show.
				soundButton color: (Color r:0.7 g:0.3 b:0.1)].
