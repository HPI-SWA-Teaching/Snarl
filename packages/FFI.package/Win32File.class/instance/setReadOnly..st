operations
setReadOnly: fileString
	"Set FILE_READ_ONLY (bit 1)"
	| attrs |
	attrs := (self getFileAttributes: fileString).
	attrs < 0 ifTrue: [ self error: 'Cannot get file attributes. System error.' ].
	(self setFileAttributes: fileString lpAttrs: (attrs bitOr: 1)) = 0 ifTrue: [ 
		self error: 'Cannot set file attributes. System error.'
	].