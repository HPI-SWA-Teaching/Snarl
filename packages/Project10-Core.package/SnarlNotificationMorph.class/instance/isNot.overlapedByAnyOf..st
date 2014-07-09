position
isNot: rect overlapedByAnyOf: morphs
	morphs do: [:m | (m owner notNil and: [m bounds intersects: rect]) ifTrue: [^ false]].
	^ true