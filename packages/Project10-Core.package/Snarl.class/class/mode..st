preferences
mode: modeSymbol

	(self snarlModeSymbols includes: modeSymbol asSymbol) 
		ifTrue: [ mode := modeSymbol ].
	^ self