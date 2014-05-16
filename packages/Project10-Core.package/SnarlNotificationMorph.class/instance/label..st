as yet unclassified
label: labelString
	self streamDo: [ :w |
		w withAttributes: self labelAttributes do: [w nextPutAll: labelString asString]].
