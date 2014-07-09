position
unoccupiedPosition
	| morphs currentExtent |
	morphs := SnarlNotificationMorph allSubInstances select: [:m | m world == World].
	
	currentExtent := (World topRight - (self width @ 0) + (0 @ 18)) extent: self extent.
	
	[self is: currentExtent overlapedByAnyOf: morphs] whileTrue: [
		currentExtent := currentExtent translateBy: 0@10.
		currentExtent bottom > World height ifTrue: 
			[currentExtent := (currentExtent left - self width -5 @ 18) extent: self extent.].
		].
	^ currentExtent origin 
