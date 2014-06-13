as yet unclassified
initialize
	super initialize.
	turnedOn := true.
	soundOn := true.
	mode := #intern.
	TheWorldMenu registerOpenCommand: {'Schlumpf'. {self. #open}}.
	[self notify: 'Snarl installed' with: 'See the class comment for class Snarl.']
		on: Error do: [].