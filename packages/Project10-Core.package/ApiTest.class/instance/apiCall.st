accessing
apiCall
	"Return the HWND currently having the input focus"
	<cdecl: Win32Window 'GetFocus' (void) module: 'user32.dll'>
	^self externalCallFailed