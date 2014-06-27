as yet unclassified
createDismissHandle
	| b handleSize handle form image |
	handleSize := 16 asPoint.
	b := Rectangle
			origin: self position + (3@3)
			extent: handleSize.
	handle := EllipseMorph newBounds: b color: Color lightRed.
	handle borderColor: handle color muchDarker.
	handle wantsYellowButtonMenu: false.
	form := ScriptingSystem formAtKey: 'Halo-Dismiss'.
	form ifNotNil: [
		image := ImageMorph new.
		image image: form.
		image color: handle color makeForegroundColor.
		image lock.
		handle addMorphCentered: image].
	handle on: #mouseUp send: #delete to: self.
	^ handle