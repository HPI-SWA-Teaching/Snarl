initialization
initialize 
	super initialize. 
	SnarlGUIResources ensureExistance.
	self loadResources;
	       initializeBackground;
		 initializeTitle;
		 initializeButtons;
	       initializeDescriptions;
             openInWorld.