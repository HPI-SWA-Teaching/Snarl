action
toggleMode
(Snarl mode = #external)	
	ifTrue: [Snarl setInternalMode. 
			self externalImage hide. 
			self internalImage show.] 
	ifFalse: [Snarl setExternalMode. 
			self internalImage hide. 
			self externalImage show].