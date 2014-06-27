as yet unclassified
notifyWithLabel: aTitle body: aText icon: iconType
	|icon|
	icon := self iconToInteger: iconType.
	self ensureExistance.
	self apiNotify: aTitle with: aText icontype: icon. 
	self playSound.