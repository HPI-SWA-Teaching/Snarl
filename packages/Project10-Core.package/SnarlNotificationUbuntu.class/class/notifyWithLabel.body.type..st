as yet unclassified
notifyWithLabel: aLabel body: aBody type: aType
	"Install CommandShell from http://www.squeaksource.com/CommandShell/"
	CommandShell new command: 
		'notify-send -i dialog-',aType asString onlyLetters asLowercase , 
			' ''',aLabel,'''   ''',aBody,''' ' echo: false.