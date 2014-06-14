as yet unclassified
createFile: aName with: aContent  
	super createFile: aName with: aContent .
	self unzip.