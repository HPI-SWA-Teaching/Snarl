as yet unclassified
testTypesInternalMode 
	Snarl setInternalMode.
	#('Warning' 'Error' 'Information' 'Squeak' 'Nonsense should be Squeak Icon') do:[:type|
	Snarl notifyWithLabel: type body: type type: type asSymbol.]