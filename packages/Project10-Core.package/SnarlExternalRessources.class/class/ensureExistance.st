as yet unclassified
ensureExistance
	(StandardFileStream isAFileNamed: (self folder, self ressourceName))
		ifFalse: [self createFile: (self folder , self ressourceName) with: self ressourceBase64 base64Decoded].