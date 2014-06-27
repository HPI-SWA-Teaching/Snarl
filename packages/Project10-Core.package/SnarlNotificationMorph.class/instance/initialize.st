as yet unclassified
initialize
	super initialize.

	self backgroundColor: self defaultBackgroundColor.
	self borderColor: self defaultBorderColor.
	self borderWidth: 0.
	self margins: ((24+self iconSize y)@4 corner: 24@4).
	self useRoundedCorners.
	self setProperty: #autoFitContents toValue: false.
	self setTextStyle: self defaultTextStyle.
	self loadResources.

	dismissHandle := self createDismissHandle.
	self addMorph: dismissHandle.
	