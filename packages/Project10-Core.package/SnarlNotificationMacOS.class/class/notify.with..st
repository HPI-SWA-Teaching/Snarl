as yet unclassified
notify: aTitle with: aText
	SnarlMacOSRessources ensureExistance.
	self system: FileDirectory default fullName,
		'/terminal-notifier.app/Contents/MacOS/terminal-notifier -message "',aText,
		'" -title "',aTitle,'" -sound default'.
	self sound play.