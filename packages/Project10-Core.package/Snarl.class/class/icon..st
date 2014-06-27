API
icon: iconType

|image path|
path := 'icons', FileDirectory slash.
image := ImageMorph new.

(iconType = #Squeak)
	ifTrue: [ image newForm: (path, 'squeak.png')].
(iconType = #Error)
	ifTrue: [].
(iconType = #Warning)
	ifTrue: [].
(iconType = #Information)
	ifTrue: [].