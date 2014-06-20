as yet unclassified
initialize
	super initialize.
	self setInternalMode soundOn turnOn notificationOnErrorOn.
	TheWorldMenu registerOpenCommand: {'Snarl - Einstellungen'. {self. #open}}.
	[
	self setInternMode;
		notify: 'Snarl installed' with: 'See the class comment for class Snarl.';
		setExternMode;
		soundOff;
		notify: 'Snarl installed' with: 'See the class comment for class Snarl.';
		soundOn;
		setInternMode;
		yourself]
		on: Error do: [].