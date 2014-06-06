as yet unclassified
label: label body: body
	turnedOn
	ifTrue:
		[^ self notification label: label body: body; notifyWithSound: mute]
	ifFalse:
		[^ nil]