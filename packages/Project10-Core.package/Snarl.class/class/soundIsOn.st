preferences
soundIsOn
	<preference: 'Snarl Notification Sound'
		category: 'Snarl'
		description: 'If activated, Snarl plays a sound for each notification.'
		type: #Boolean>

	^ soundIsOn ifNil: [ false ]