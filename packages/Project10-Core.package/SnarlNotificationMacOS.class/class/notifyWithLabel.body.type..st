as yet unclassified
notifyWithLabel: aTitle body: aText type: aType
	self ensureExistance.
	self system: 'python ',(self folder fullNameFor: 	'notifications.py -t "', aType asString ,': ',  aTitle ,'" -m "',aTitle,'"'). 
	self playSound