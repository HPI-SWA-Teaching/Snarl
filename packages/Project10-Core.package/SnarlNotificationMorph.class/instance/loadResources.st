as yet unclassified
loadResources 
	|path files|
	path := 'Snarl', FileDirectory slash.
	files := Dictionary new.
	images := Dictionary new.
	files 
		at: 'squeak' put: path, 'squeak.png';
		at: 'error' put: path, 'error.png';
		at: 'warning' put: path, 'warning.png';
		at: 'information' put: path, 'information.png'.
		
		files keysDo: [ :key | images at: key
						put:(ImageReadWriter formFromFileNamed:
								(FileDirectory uri: (files at: key)) fullName)].
	

	