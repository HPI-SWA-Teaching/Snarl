action
notifyWithLabel: aTitle body: aText
	self ensureExistance.
	self system: 'python ',(self folder fullNameFor: 	'notifications.py -t "', aTitle ,'" -m "',aTitle,'"'). 
	self playSound