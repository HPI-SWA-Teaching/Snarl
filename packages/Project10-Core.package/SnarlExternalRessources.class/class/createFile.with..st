as yet unclassified
createFile: aName with: aContent
	^(StandardFileStream newFileNamed: (self folder fullNameFor: self ressourceName)) nextPutAll: aContent.
	