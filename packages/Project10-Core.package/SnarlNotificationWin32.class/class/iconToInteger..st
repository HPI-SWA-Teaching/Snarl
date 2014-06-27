as yet unclassified
iconToInteger: iconType
	"Icon type 0: No icon
	Icon type 1: Info icon
	Icaon type 2: Warning icon
	Icon type 3: Error icon
	Icon type 4: User icon"

(iconType = #Squeak)
	ifTrue: [ ^4].
(iconType = #Error)
	ifTrue: [^3].
(iconType = #Warning)
	ifTrue: [^2].
(iconType = #Information)
	ifTrue: [^1].

^0
	

