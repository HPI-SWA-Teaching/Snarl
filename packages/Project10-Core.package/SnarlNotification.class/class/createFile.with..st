Resourcemanagment
createFile: aName with: aContent
	| file |
	file := (self folder newFileNamed: aName).
	file nextPutAll: aContent asByteArray.
	file close.
	^file