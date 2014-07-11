as yet unclassified
notifyWithLabel: aTitle body: aText type: aType
	|icon|
	icon := self iconToInteger: aType.
	self ensureExistance.
	self apiNotify: aTitle with: aText icontype: icon. 
	self playSound.