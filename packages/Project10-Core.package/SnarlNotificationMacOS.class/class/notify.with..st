as yet unclassified
notify: aTitle with: aText
	self ensureExistance.
	self system: (FileDirectory default fullNameFor: 	'python notifications.py -t "', aTitle ,'" -m "',aTitle,'"').
	self playSound