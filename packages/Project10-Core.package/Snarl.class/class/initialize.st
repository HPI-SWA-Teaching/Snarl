as yet unclassified
initialize
	super initialize.
	turnedOn := true.
	soundOn := true.
	TheWorldMenu registerOpenCommand: {'Schlumpf'. {self. #open}}.
	[self label: 'Snarl installed' body: 'See the class comment for class Snarl.']
		on: Error do: [].