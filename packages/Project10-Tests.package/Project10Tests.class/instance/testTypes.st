as yet unclassified
testTypes
	#('Warning' 'Error' 'Information' 'Squeak' 'Nonsense should be Squeak Icon') do:[:type|
	Snarl setInternalMode notifyWithLabel: type body: type icon: type asSymbol.
	Snarl setExternalMode notifyWithLabel: type body: type icon: type asSymbol].
	Snarl setInternalMode 