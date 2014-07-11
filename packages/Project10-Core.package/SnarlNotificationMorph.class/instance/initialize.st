initialize
initialize
	super initialize.

	self backgroundColor: self defaultBackgroundColor.
	self borderColor: self defaultBorderColor.
	self borderWidth: 0.
	self margins: ((24+5+self iconSize y)@15 corner: 24@15).
	self useRoundedCorners.
	self setProperty: #autoFitContents toValue: false.
	self setTextStyle: self defaultTextStyle.

	dismissHandle := self createDismissHandle.
	self addMorph: dismissHandle.
	