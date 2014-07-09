as yet unclassified
notifyWithLabel: aLabel body: aBody icon: anIcon
	Snarl setInternalMode.
	Snarl notifyWithLabel: aLabel body: aBody icon: anIcon.
	Snarl notifyWithLabel: 'Snarl - Error' body: 'Snarl for Unix is not implemented yet. Reset Mode to internal' icon: #Error.
	