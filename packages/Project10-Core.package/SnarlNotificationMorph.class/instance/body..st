as yet unclassified
body: bodyString
	self streamDo: [ :w |
		w withAttributes: self bodyAttributes do: [w nextPutAll: bodyString asString]].