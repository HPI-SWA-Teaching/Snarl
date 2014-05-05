as yet unclassified
label: labelString body: bodyString
	self streamDo: [ :w |
		w withAttributes: self labelAttributes do: [w nextPutAll: labelString asString; cr].
		w withAttributes: self bodyAttributes do: [w nextPutAll: bodyString asString]].