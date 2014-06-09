as yet unclassified
testMessagesTurnOffNotifications
	"can't Count Morphs because it is displayed by a asynchronius Message just played after this test"
	|countDeferredUIMessages|	
	Snarl turnOff.
	countDeferredUIMessages := WorldState deferredUIMessages size..
	Snarl label:'Test' body:'Test'.
	self assert: countDeferredUIMessages equals: WorldState deferredUIMessages size.
		
	
	
	