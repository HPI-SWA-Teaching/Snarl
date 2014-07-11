as yet unclassified
notifyWithLabel: aLabel body: aBody type: aType
	Snarl setInternalMode.
	Snarl notifyWithLabel: aLabel body: aBody type: aType.
	Snarl notifyWithLabel: 'Snarl - Error' body: 'Snarl for Unix is not implemented yet. Reset Mode to internal' type: #Error.
	