action
iconToInteger: iconType
	(iconType = #Squeak)
		ifTrue: [ ^4].
	(iconType = #Error)
		ifTrue: [^3].
	(iconType = #Warning)
		ifTrue: [^2].
	(iconType = #Information)
		ifTrue: [^1].

	^4
	

