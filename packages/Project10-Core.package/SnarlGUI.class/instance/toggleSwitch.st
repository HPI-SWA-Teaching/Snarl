action
toggleSwitch
Snarl isTurnedOn 	
	ifTrue:   [Snarl turnOff. 
			 switch color: (Color r:0.7 g:0.3 b:0.1).]
	ifFalse:  [Snarl turnOn. 
			 switch color: (Color r: 0.2 g: 0.7 b:0.1).].