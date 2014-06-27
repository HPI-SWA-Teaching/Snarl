initialization
initializeDescriptions
	|soundField modeField switchField distanceButtonToString|
	
	distanceButtonToString := 10.
		
	soundField:= StringMorph new; contents:'Sound on/off'.
	soundField center: (0@soundButton center y).
	soundField left: (soundButton right + distanceButtonToString).
	
	modeField:= StringMorph new; contents:'Mode extern/intern'.
	modeField center: (0@modeButton center y).
	modeField left: (modeButton right + distanceButtonToString).
	
	switchField:= StringMorph new; contents:'Notifications on/off'.
	switchField center: (0@switch center y).
	switchField left: (switch right + distanceButtonToString).
	
	self addMorph: soundField; addMorph: modeField; addMorph: switchField.