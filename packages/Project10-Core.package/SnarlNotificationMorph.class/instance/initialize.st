as yet unclassified
initialize
	super initialize.

	self backgroundColor: self defaultBackgroundColor.
	self borderColor: self defaultBorderColor.
	self borderWidth: 2.
	self margins: (24@4 corner: 24@4).
	self useRoundedCorners.
	self setProperty: #autoFitContents toValue: false.
	self setTextStyle: self defaultTextStyle.
	
	[sound := (SampledSound fromWaveFileNamed: 'Notify', FileDirectory slash, 'sound.wav').]
	on: Exception do: [self label:'Sound-Datei konnte nicht geladen werden'].
	
	dismissHandle := self createDismissHandle.
	self addMorph: dismissHandle.
	