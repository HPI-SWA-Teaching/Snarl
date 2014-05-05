parsing
parse: aNotification 
	^ String
		streamContents: [:stream | 
			stream nextPutAll: self header;
				nextPutAll: '#?action=notification';
				nextPutAll: '#?app=';
				nextPutAll: aNotification appName.
			aNotification notificationClass ifNotNilDo: [:class | stream 
				nextPutAll: '#?class=';
				nextPutAll: class].
			stream 
				nextPutAll: '#?title=';
				nextPutAll: aNotification title;
				nextPutAll: '#?text=';
				nextPutAll: aNotification notification;
				nextPutAll: '#?timeout=';
				nextPutAll: aNotification timeout printString.
			]