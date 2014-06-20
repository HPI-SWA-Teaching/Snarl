as yet unclassified
initialize 
	|image|
	super initialize. 
	
	window := Morph new.
	window top: 50; left: 50; width: 150; height: 300; color: Color lightGray .
	
	self loadResources.
	
	image := soundOnImage.
	soundButton := SimpleButtonMorph new.
	soundButton target: self;
		label: 'Toggle sound!';
		actionSelector: #toggleSound;
		top: window top; left: window left; 
		width: image width; height: image height.
	soundButton addMorph: image.
	
	externButton := SimpleButtonMorph new.
	externButton target: self;
		label: 'Toggle extern';
		actionSelector: #setExternMode;
		top: window top + 50; left: window left;
		width: image width; height: image height.

	enabledButton := SimpleButtonMorph new.
	enabledButton target: self;
	label: 'Toggle enabled';
	actionSelector: #toggleEnabled;
	top: window top + 100; left: window left;
	width: image width; height: image height.
	
	window addMorph: soundButton.
	window addMorph: externButton.
	window addMorph: enabledButton.
	
	window openInWorld.