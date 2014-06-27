as yet unclassified
mapIconType: iconType

|image|
image := ImageMorph new newForm: (images at: 'squeak').

(iconType = #Error)
	ifTrue: [image newForm: (images at: 'error')].
(iconType = #Warning)
	ifTrue: [image newForm: (images at: 'warning')].
(iconType = #Information)
	ifTrue: [image newForm: (images at: 'information')].
	
^image.
	
	