initialization
loadResources 
	|path files|
	path := 'icons', FileDirectory slash.
	files := Dictionary new.
	images := Dictionary new.
	files 
		at: 'external' put: path, 'external.png';
		at: 'internal' put: path, 'internal.png';
		at: 'speaker' put: path, 'speaker.png';
		at: 'mute' put: path, 'speaker_mute.png';
		at: 'standby' put: path, 'standby.png'.
		
		files keysDo: [ :key | images at: key
						put:(ImageReadWriter formFromFileNamed:
								(FileDirectory uri: (files at: key)) fullName)].
	
