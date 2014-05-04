baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do:[
			spec
				package: 'Project10-Core';
				package: 'Project10-Tests' with: [ spec requires: #('default')]
			"more specs from the screencast..."
		]