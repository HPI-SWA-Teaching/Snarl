as yet unclassified
loadIcon: aName
	| file form |
	file := (SnarlNotificationIntern folder fullNameFor: aName,'.png').
	(FileStream isAFileNamed: file) ifFalse: [file := SnarlNotificationIntern folder fullNameFor: 'squeak.png'].
	form := (ImageReadWriter formFromFileNamed: file).
	form := form scaledToSize: self iconSize.
	^ImageMorph new newForm: form.
	