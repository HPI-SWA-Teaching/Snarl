api
label: labelString body: bodyString iconImage: anImage
	self streamDo: [ :w |
		labelString notEmpty ifTrue: [
			w withAttributes: self labelAttributes do: [w nextPutAll: labelString asString]].
		(labelString notEmpty and: bodyString notEmpty) ifTrue: [w withAttributes: self labelAttributes do: [w cr]].
		bodyString notEmpty ifTrue:[
		w withAttributes: self bodyAttributes do: [w nextPutAll: bodyString asString]]
																														].
	icon:= anImage.
	clearIcon:= anImage form copy.
	icon left: self left + 24; top: self center y - (anImage height / 2); extent: self iconSize.
	self addMorph: icon.