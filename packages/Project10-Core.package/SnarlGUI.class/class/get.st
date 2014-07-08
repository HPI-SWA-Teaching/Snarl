as yet unclassified
get
	SnarlGUIResources ensureExistance.
	Current ifNil: [Current:= self new].
	^Current.