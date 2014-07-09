as yet unclassified
loadIcon: aName withSize: aSize
	| file form |
	file := (self folder fullNameFor: aName,'.png').
	(FileStream isAFileNamed: file) ifFalse: [file := self folder fullNameFor: 'squeak.png'].
	form := (ImageReadWriter formFromFileNamed: file).
	form := form scaledToSize: aSize.
	^ImageMorph new newForm: form.
	