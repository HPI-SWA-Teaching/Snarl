as yet unclassified
initialize
	super initialize.
	turnedOn := true.
	TheWorldMenu registerOpenCommand: {'Schlumpf'. {self. #open}}.
	[self label: 'Snarl installed' body: 'See the class comment for class Snarl.']
		on: Error do: [].