initialization
initializeSwitch
	|switchImage sideLength description|
	
	switchImage:= images at: 'standby'.
	sideLength := switchImage width + 10.
	
	switch := SimpleButtonMorph new label: ''.
	Snarl isTurnedOn 
		ifTrue: [switch color: self colorGreen.]
		ifFalse: [switch color: self colorRed].
	switch width: sideLength; height: sideLength;
	           left: modeButton left;
		     top: modeButton bottom + self distanceBetweenButtons.
	switchImage center: (switch center).
	switch addMorph: switchImage.
	switch on: #mouseDown send: #value to: [self toggleSwitch].
	
	description:= StringMorph new; contents:'Notifications on/off'.
	description center: (0@switch center y).
	description left: (switch right + self distanceButtonToDescription).
	
	self addMorph: switch; addMorph: description.