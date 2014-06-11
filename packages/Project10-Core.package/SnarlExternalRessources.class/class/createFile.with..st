as yet unclassified
createFile: aName with: aContent
	^(StandardFileStream newFileNamed: aName) nextPutAll: aContent.
	