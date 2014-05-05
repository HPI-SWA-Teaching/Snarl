as yet unclassified
handlesMouseDown: evt
	^ clickAction notNil or: [super handlesMouseDown: evt]