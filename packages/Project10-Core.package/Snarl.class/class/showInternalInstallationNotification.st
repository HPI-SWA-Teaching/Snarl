installation
showInternalInstallationNotification
	self setInternalMode soundOn.
	[  self notifyWithLabel: 'Snarl installed' body: 'See the class comment for class Snarl.';
		    yourself ]
	    on: Error do: [].