as yet unclassified
testSoundOff
	"comment stating purpose of message"
	|notification|	
	self currentWorld runStepMethods.
	Snarl turnOn.
	Snarl soundOff.
	notification := Snarl label:'Test' body:'Test'.
	self currentWorld runStepMethods.
	self assert: (SoundPlayer isPlaying: notification sound) not.
	
		
	
	