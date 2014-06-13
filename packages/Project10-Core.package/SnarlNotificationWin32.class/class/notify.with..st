as yet unclassified
notify: aTitle with: aText
	SnarlWin32Ressources ensureExistance.
	self apiNotify: aTitle with: aText. 
	self sound play.