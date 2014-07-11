action
apiNotify:  aString with: anotherString iconpath: aPath
	<apicall: void 'DisplayNotificationX' (char* char* char*) module: 'Snarl/notifications.dll'>
	^self externalCallFailed
