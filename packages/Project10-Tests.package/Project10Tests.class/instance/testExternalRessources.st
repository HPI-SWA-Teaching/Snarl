as yet unclassified
testExternalRessources
	| base64 |
	SnarlWin32Ressources ensureExistance.
	self assert: (StandardFileStream isAFileNamed: SnarlWin32Ressources ressourceName).
	
	base64 := (SnarlWin32Ressources ressourceBase64) copyReplaceAll: String cr with: ''.
	self assert: base64 size *6
		equals: (StandardFileStream readOnlyFileNamed: SnarlWin32Ressources ressourceName) size *8.
	