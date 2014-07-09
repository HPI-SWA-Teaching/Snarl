position
unoccupiedPosition
	| b morphs |
	b := (World topRight - (self width @ 0)) extent: self extent.
	morphs := SnarlNotificationMorph allSubInstances select: [:m | m world == World].
	[self is: b saneWithRespectTo: morphs] whileFalse: [
		b := b translateBy: 0@10.
		b bottom > World height ifTrue: [^ (World topRight - (self width @ 0))]].
	^ b origin