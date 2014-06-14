as yet unclassified
apiNotify:  aString with: anotherString icontype: anInteger
	"Icon type 0: No icon
	Icon type 1: Info icon
	Icaon type 2: Warning icon
	Icon type 3: Error icon
	Icon type 4: User icon"
	<apicall: void 'DisplayNotification' (char* char* char) module: 'notifications.dll'>
	^self externalCallFailed

