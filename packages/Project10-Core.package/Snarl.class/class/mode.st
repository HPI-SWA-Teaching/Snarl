preferences
mode
	<preference: 'Snarl Mode'
		category: 'Snarl'
		description: 'Set the Snarl mode. Enter ''external'' to get OS notifications or ''internal'' to get notifications in the image.'
		type: #String>

	^ mode ifNil: [ #internal ]