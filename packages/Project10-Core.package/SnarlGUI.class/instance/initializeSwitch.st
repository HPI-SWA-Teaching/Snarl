initialization
initializeSwitch
	|switchImage sideLength distanceWindowCornerToSwitch|
	
	switchImage:= ImageMorph new newForm: (images at: 'standby').
	sideLength := switchImage width + 8.
	distanceWindowCornerToSwitch := 5.
	
	switch := SimpleButtonMorph new label: ''.
	Snarl turnedOn 
		ifTrue: [switch color: (Color r: 0.2 g: 0.7 b:0.1).]
		ifFalse: [switch color: (Color r:0.7 g:0.3 b:0.1).].
	switch width: sideLength; height: sideLength.
	switch topRight: (self topRight x -distanceWindowCornerToSwitch @ self topRight y - distanceWindowCornerToSwitch).
	switchImage center: (switch center).
	switch addMorph: switchImage.
	switch on: #mouseDown send: #value to: [self toggleSwitch].
	self addMorph: switch.