layout
iconWithAlpha: newAlpha
	^icon form collectColors: [:color| color alpha: (color alpha min: newAlpha)].