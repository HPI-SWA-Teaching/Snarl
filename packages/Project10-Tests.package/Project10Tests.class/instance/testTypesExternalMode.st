testing
testTypesExternalMode 
	Smalltalk platformName = 'unix' ifTrue: [^nil]. "We need CommandShell for this"
	Snarl setExternalMode.
	#('Warning' 'Error' 'Information' 'Squeak' 'Nonsense should be Squeak Icon') do:[:type|
	Snarl notifyWithLabel: type body: type type: type asSymbol.]