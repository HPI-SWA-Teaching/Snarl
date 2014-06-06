baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do:[
			spec
				package: 'FFI-Pool' with: 
					[ spec
     						repository: 'http://source.squeak.org/FFI';
						yourself ];	
				package: 'FFI-Kernel' with: 
					[ spec
     						repository: 'http://source.squeak.org/FFI';
						yourself ];	
				yourself.
			spec
				package: 'Project10-Core';
				package: 'Project10-Tests' with: [ spec requires: #('default')];
				yourself.
			"more specs from the screencast..."
		]