as yet unclassified
ensureExistance
<<<<<<< HEAD
	(StandardFileStream isAFileNamed:(self folder fullNameFor: self ressourceName))
		ifFalse: [self createFile: self ressourceName with: self ressourceBase64 base64Decoded].
=======
	(StandardFileStream isAFileNamed: (self folder, self ressourceName))
		ifFalse: [self createFile: (self folder , self ressourceName) with: self ressourceBase64 base64Decoded].
>>>>>>> 5927d23c5d62bcc496753d4af8dcae64fa5cef79
