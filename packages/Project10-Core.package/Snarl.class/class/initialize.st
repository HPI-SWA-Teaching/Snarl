as yet unclassified
initialize
	super initialize.
	turnedOn := true.
	[self label: 'Snarl installed' body: 'See the class comment for class Snarl.']
		on: Error do: [].