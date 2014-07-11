action
apiNotify:  aString with: anotherString icontype: anInteger
	<apicall: void 'DisplayNotification' (char* char* char) module: 'Snarl/notifications.dll'>
	^self externalCallFailed

