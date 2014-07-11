installation
initialize
	super initialize.
	TheWorldMenu registerOpenCommand: {'Snarl'. {self. #open}}.
	self turnOn.
	self showExternalInstallationNotification.
	self showInternalInstallationNotification.