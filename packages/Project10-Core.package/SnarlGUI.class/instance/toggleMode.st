action
toggleMode
	(Snarl mode = #external)	
		ifTrue: [Snarl setInternalMode. 
				externalImage hide. 
				internalImage show.] 
		ifFalse: [Snarl setExternalMode. 
				internalImage hide. 
				externalImage show].