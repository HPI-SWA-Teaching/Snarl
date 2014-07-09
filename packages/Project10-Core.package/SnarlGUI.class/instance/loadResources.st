initialization
loadResources 
	images := Dictionary new.
	#('external' 'internal' 'speaker' 'mute' 'standby') do:
		[:name| images at: name put: (SnarlGUIResources loadIcon: name withSize: self imageSize).]