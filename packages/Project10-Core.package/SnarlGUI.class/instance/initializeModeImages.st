initialization
initializeModeImages
	
	external := images at: 'external'.
	internal := images at: 'internal'.
	external center: (modeButton center).
	internal center: (modeButton center).
	modeButton addMorph: external; addMorph: internal.
	
	Snarl mode = #external
		ifTrue: [	internal hide]
		ifFalse: [external hide].