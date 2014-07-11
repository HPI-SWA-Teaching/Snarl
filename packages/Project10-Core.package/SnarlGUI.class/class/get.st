access
get
	SnarlGUIResources ensureExistance.
	self allInstancesDo: [ :inst |  
			inst isInWorld
				ifTrue: [^inst]].
	^self new.