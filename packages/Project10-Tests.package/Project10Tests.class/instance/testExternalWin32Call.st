as yet unclassified
testExternalWin32Call
	(SmalltalkImage current platformName = 'Win32') ifTrue:
		[ self assert:13 equals:(self apiExternalCall).]
		
	
	