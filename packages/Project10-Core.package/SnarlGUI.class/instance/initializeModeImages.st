initialization
initializeModeImages
	
	external := ImageMorph new newForm: (images at: 'external').
	internal := ImageMorph new newForm: (images at: 'internal').
	external center: (modeButton center).
	internal center: (modeButton center).
	modeButton addMorph: external; addMorph: internal.
	
	Snarl mode = #external
		ifTrue: [	internal hide]
		ifFalse: [external hide].