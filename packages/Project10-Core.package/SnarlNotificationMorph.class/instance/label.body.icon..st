as yet unclassified
label: labelString body: bodyString icon: iconType
	|image|
	image := ImageMorph new.
	image := self mapIconType: iconType.
	self streamDo: [ :w |
		w withAttributes: self labelAttributes do: [w nextPutAll: labelString asString; cr].
		w withAttributes: self bodyAttributes do: [w nextPutAll: bodyString asString]].
	image bottomLeft: (self bottomLeft).
	self addMorph: image.