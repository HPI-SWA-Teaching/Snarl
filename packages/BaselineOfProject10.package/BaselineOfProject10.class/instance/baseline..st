baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do:[
			spec
				package: 'FFI-Pools' with: 
					[ spec
     						repository: 'http://source.squeak.org/FFI/';
						yourself ];
				package: 'FFI-Kernel' with: 
					[ spec
     						repository: 'http://source.squeak.org/FFI/';
						yourself ];
				package: 'CommandShell' with:  
					[ spec
     						repository: 'http://www.squeaksource.com/CommandShell/';
						yourself ];
				
				package: 'Project10-Core' with: [ spec requires: 
					#('FFI-Pools' 'FFI-Kernel' 'CommandShell')]; 
				package: 'Project10-Tests' with: [ spec requires: #('Project10-Core')];
				yourself.
			spec
               	 	group: 'default' with: #('Project10-Core');
                		group: 'Tests' with: #('Project10-Tests');
               	 	group: 'TravisCI' with: #('Tests').
			"more specs from the screencast..."
		]