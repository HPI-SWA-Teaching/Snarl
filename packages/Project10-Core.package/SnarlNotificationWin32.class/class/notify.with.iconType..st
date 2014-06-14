as yet unclassified
notify: aTitle with: aText iconType: aType
	self ensureExistance.
	self apiNotify: aTitle with: aText icontype:aType. 
	self playSound.