display
step
	(self containsPoint: ActiveHand position) 
		ifTrue: [ self resetAlpha.
				^ self].
	vanishTime ifNotNil: [TimeStamp now < vanishTime ifTrue: [^self]].
	self alpha: alpha - 0.05.
