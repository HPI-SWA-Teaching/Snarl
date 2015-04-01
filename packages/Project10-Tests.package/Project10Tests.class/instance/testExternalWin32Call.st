testing
testExternalWin32Call
	(SmalltalkImage current platformName = 'Win32') ifTrue:
		[ self assert:13 equals:(self apiExternal32Call).]
		
	
	