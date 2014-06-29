as yet unclassified
notifyWithLabel: aTitle body: aText
	self ensureExistance.
	self system: (FileDirectory default fullNameFor: 	'python Snarl/notifications.py -t "', aTitle ,'" -m "',aTitle,'"').
	self playSound