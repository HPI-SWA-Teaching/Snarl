as yet unclassified
notifyWithLabel: aTitle body: aText icon: aIcon
	self ensureExistance.
	self system: 'python ',(self folder fullNameFor: 	'notifications.py -t "', aIcon asString ,': ',  aTitle ,'" -m "',aTitle,'"'). 
	self playSound