Resourcemanagment
createFile: aName with: aContent
	| file |
	file := (StandardFileStream newFileNamed: aName).
	file nextPutAll: aContent.
	file close.
	^file