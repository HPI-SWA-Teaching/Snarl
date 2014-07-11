installation
showExternalInstallationNotification
	self setExternalMode soundOff.
	[  self notifyWithLabel: 'Snarl installed' body: 'See the class comment for class Snarl.';
		    yourself ]
	    on: Error do: [].