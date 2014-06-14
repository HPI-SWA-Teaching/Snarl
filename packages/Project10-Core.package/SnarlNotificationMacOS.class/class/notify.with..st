as yet unclassified
notify: aTitle with: aText
  
	| path |
	self ensureExistance.
	path := self folder fullName,
		'/terminal-notifier_1.4.2/terminal-notifier.app/Contents/MacOS/terminal-notifier'.
	self system: path, ' -message "',aText, '" -title "',aTitle,'" -sound default'.
	self sound play.