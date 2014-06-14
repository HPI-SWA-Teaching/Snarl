as yet unclassified
testExternalRessources
	| base64 |
	SnarlNotificationWin32 ensureExistance.
	self assert: (StandardFileStream isAFileNamed: (SnarlNotificationWin32 resourceDLL at:1)).
	
	base64 := (SnarlNotificationWin32 resourceDLL at:2) copyReplaceAll: String cr with: ''.
	self assert: base64 size *6 // 8
		equals: (StandardFileStream readOnlyFileNamed: (SnarlNotificationWin32 resourceDLL at:1)) size .
	