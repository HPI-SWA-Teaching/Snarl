as yet unclassified
testTurnOffNotifications
	"can't Count Morphs because it is displayed by a asynchronius Message just played after this test"
	|countSubmorphs|
	self currentWorld runStepMethods.	
	Snarl turnOff.
	countSubmorphs := self currentWorld submorphs size..
	Snarl label:'Test' body:'Test'.
	self currentWorld runStepMethods.
	self assert: countSubmorphs equals: self currentWorld submorphs size.
		
	
	
	