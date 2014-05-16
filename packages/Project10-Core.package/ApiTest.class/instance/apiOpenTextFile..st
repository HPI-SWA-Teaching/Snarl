accessing
apiOpenTextFile: aFilePath
"HANDLE WINAPI CreateFile(
  _In_      LPCTSTR lpFileName,
  _In_      DWORD dwDesiredAccess,
  _In_      DWORD dwShareMode,
  _In_opt_  LPSECURITY_ATTRIBUTES lpSecurityAttributes,
  _In_      DWORD dwCreationDisposition,
  _In_      DWORD dwFlagsAndAttributes,
  _In_opt_  HANDLE hTemplateFile
);"
	<apicall: Win32Handle 'CreateFile' (char* ulong ulong void* ulong ulong void* ) module: 'Kernel32.dll'>
	^self externalCallFailed