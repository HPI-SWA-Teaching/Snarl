as yet unclassified
testSoundOn
	"comment stating purpose of message"
	|notification|	
	self currentWorld runStepMethods.
	Snarl turnOn.
	Snarl soundOn.
	notification := Snarl label:'Test' body:'Test'.
	self currentWorld runStepMethods.
	self assert: (SoundPlayer isPlaying: (notification sound)).
	
		
	
	