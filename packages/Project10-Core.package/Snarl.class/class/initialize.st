as yet unclassified
initialize
	super initialize.
	self setInternalMode soundOn turnOn notificationOnErrorOn.
	TheWorldMenu registerOpenCommand: {'Snarl - Einstellungen'. {self. #open}}.
	[
	self setInternalMode;
		notifyWithLabel: 'Snarl installed' body: 'See the class comment for class Snarl.';
		setExternalMode;
		soundOff;
		notifyWithLabel: 'Snarl installed' body: 'See the class comment for class Snarl.';
		soundOn;
		setInternalMode;
		yourself]
		on: Error do: [].