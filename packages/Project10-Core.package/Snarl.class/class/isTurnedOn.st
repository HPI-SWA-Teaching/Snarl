preferences
isTurnedOn
	<preference: 'Snarl Notifications'
		category: 'Snarl'
		description: 'Is Snarl enabled.'
		type: #Boolean>

	^ isTurnedOn ifNil: [ false ]