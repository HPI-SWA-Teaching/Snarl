action
toggleSwitch
	Snarl isTurnedOn 	
		ifTrue:   [Snarl turnOff. 
			 	 switch color: self colorRed]
		ifFalse:  [Snarl turnOn. 
				  switch color: self colorGreen].