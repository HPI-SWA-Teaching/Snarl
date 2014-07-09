initialization
initialize 
	super initialize. 
	SnarlGUIResources ensureExistance.
	self loadResources.
	self initializeBackground.
	self initializeTitle.
	self initializeSoundButton.
	self initializeModeButton.
	self initializeSwitch.
	self initializeDescriptions.
	self initializeCloseButton.
	self openInWorld.