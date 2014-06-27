as yet unclassified
initialize
	super initialize.
	self setInternalMode soundOn turnOn notificationOnErrorOn.
	TheWorldMenu registerOpenCommand: {'Snarl - Einstellungen'. {self. #open}}.
	[
	self setInternalMode;
		notify: 'Snarl installed' with: 'See the class comment for class Snarl.';
		setExternalMode;
		soundOff;
		notify: 'Snarl installed' with: 'See the class comment for class Snarl.';
		soundOn;
		setInternalMode;
		yourself]
		on: Error do: [].