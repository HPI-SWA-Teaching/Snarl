layout
alpha: newAlpha
	alpha = newAlpha ifTrue: [^ self].

	alpha := newAlpha.

	self backgroundColor: (self nextColorStep: self backgroundColor).
	self allMorphsDo: [:m |
		m borderColor: (self nextColorStep: m borderColor).
		m color: (self nextColorStep: m color)].
	
	icon newForm: (self iconWithAlpha: newAlpha).
	self borderColor isTransparent ifTrue: [self delete].