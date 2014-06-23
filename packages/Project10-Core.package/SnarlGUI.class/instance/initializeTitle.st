initialization
initializeTitle

	|distanceWindowtopToTitle|
	distanceWindowtopToTitle := 10.
	title := StringMorph new; contents:'Snarl-Settings'.
	title font: ((TextStyle default fontOfSize: 15) emphasized: 1).
	title center: (self center x@ self top).
	title top: self top + distanceWindowtopToTitle.
	self addMorph: title.