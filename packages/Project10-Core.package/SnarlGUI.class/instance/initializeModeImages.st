initialization
initializeModeImages
	
	externalImage := images at: 'external'.
	internalImage := images at: 'internal'.
	externalImage center: (modeButton center).
	internalImage center: (modeButton center).
	modeButton addMorph: externalImage; addMorph: internalImage.
	
	Snarl mode = #external
		ifTrue: [	internalImage hide]
		ifFalse: [externalImage hide].