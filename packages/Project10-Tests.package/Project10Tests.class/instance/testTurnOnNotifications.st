testing
testTurnOnNotifications
	"comment stating purpose of message"
	|countSubmorphs|	
	self currentWorld runStepMethods.
	Snarl turnOn.
	countSubmorphs := self currentWorld submorphs size..
	Snarl label:'Test' body:'Test'.
	self currentWorld runStepMethods.
	self assert: countSubmorphs+1 equals: self currentWorld submorphs size.
		
	
	