as yet unclassified
apiNotify:  aString with: anotherString iconpath: aPath
	<apicall: void 'DisplayNotificationX' (char* char* char*) module: 'notifications.dll'>
	^self externalCallFailed
