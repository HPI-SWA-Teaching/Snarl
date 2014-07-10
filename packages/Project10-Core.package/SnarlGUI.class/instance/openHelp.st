initialization
openHelp
	| help container close|
	help := ScrollableField new.

	help  color: (Color r: 0.972 g: 0.972 b: 0.662);
	 retractable: false; scrollBarOnLeft: false;
	 wantsFrameAdornments: false;
	 width: 600; height:600;
	 setMyText:  Snarl comment.
	
	container := Morph new color: Color transparent.
	
	close := SimpleButtonMorph new label: 'close'; 
		on: #mouseDown send: #value to: [container delete.].
	help top: close height.
	container addMorph: close; addMorph: help.
	
	container openInHand.