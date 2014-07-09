api
label: labelString body: bodyString iconImage: anImage
	self streamDo: [ :w |
		labelString notEmpty ifTrue: [
			w withAttributes: self labelAttributes do: [w nextPutAll: labelString asString]].
		(labelString notEmpty and: bodyString notEmpty) ifTrue: [w withAttributes: self labelAttributes do: [w cr]].
		bodyString notEmpty ifTrue:[
		w withAttributes: self bodyAttributes do: [w nextPutAll: bodyString asString]]
																														].
	anImage left: self left + 24.
	anImage top: self center y - (anImage height / 2).
	anImage extent: self iconSize.
	self addMorph: anImage.