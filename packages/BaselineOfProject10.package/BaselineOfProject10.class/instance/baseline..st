baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do:[
			spec
				package: 'Project10-Core' with: [ spec requires: #('FFI')]; 
				package: 'Project10-Tests' with: [ spec requires: #('Project10-Core')];
				yourself.
			spec
               	 	group: 'default' with: #('Project10-Core');
                		group: 'Tests' with: #('Project10-Tests');
               	 	group: 'TravisCI' with: #('Tests').
			"more specs from the screencast..."
		]