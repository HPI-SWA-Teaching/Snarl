as yet unclassified
notify: aTitle with: aText
	self ensureExistance.
	self system: (FileDirectory default fullNameFor: 	'/terminal-notifier.app/Contents/MacOS/terminal-notifier -message "',aText,
		'" -title "',aTitle,'" -sound default').
	self playSound