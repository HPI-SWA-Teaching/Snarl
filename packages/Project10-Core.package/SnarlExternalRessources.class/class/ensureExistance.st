as yet unclassified
ensureExistance
	(StandardFileStream isAFileNamed: (self ressourceName))
		ifFalse: [self createFile: self ressourceName with: self ressourceBase64 base64Decoded].