Resourcemanagment
ensureExistanceOfResource: aResource
	(StandardFileStream isAFileNamed:(self folder fullNameFor: (aResource at: 1) ))
		ifFalse: [self createFile:(aResource at: 1) with: (aResource at: 2) base64Decoded.].
