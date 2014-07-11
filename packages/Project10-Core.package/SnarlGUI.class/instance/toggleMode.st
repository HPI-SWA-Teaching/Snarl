action
toggleMode
Snarl mode = #external 	ifTrue: [Snarl setInternalMode. 
									external hide. 
									internal show.] 
							ifFalse: [Snarl setExternalMode. 
									internal hide. 
									external show].