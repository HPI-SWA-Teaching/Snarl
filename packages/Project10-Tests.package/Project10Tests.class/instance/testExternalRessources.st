as yet unclassified
testExternalRessources
	| file contents |
	{SnarlNotificationWin32 . SnarlNotificationIntern . SnarlNotificationMacOS . SnarlGUIResources . SnarlSoundResource}
		do:[:resourceClass| 
			resourceClass ensureExistance.
			resourceClass resources do:[:resource|
				file := StandardFileStream readOnlyFileNamed: (resourceClass folder fullNameFor: (resource at:1)).
				contents := file contents.
				file close.
				self assert: (contents = (resource at: 2) base64Decoded ).				
				
				]						
			]

	