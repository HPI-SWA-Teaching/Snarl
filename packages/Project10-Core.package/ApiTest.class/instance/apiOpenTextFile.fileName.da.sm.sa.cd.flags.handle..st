accessing
apiOpenTextFile: aHWND fileName: aFileName da: aDA sm: aSM sa: aSA cd: aCD flags: flags handle: Win32Handle
"HANDLE WINAPI CreateFile(
  _In_      LPCTSTR lpFileName,
  _In_      DWORD dwDesiredAccess,
  _In_      DWORD dwShareMode,
  _In_opt_  LPSECURITY_ATTRIBUTES lpSecurityAttributes,
  _In_      DWORD dwCreationDisposition,
  _In_      DWORD dwFlagsAndAttributes,
  _In_opt_  HANDLE hTemplateFile
);"
	<apicall: long 'CreateFile' (void char* ulong ulong Win32SecurityAttributes ulong ulong long ) module: 'user32.dll'>
	^self externalCallFailed