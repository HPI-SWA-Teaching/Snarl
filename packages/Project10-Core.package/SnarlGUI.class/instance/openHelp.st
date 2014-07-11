action
openHelp
	| help container close|
	help := ScrollableField new.

	help  color: (self defaultColor);
	 retractable: false; scrollBarOnLeft: false;
	 wantsFrameAdornments: false;
	 width: 600; height:600;
	 setMyText:  Snarl comment.
	
	container := Morph new color: Color transparent.
	
	close := SimpleButtonMorph new label: 'close'; 
		         color: (self colorGreen);
		        on: #mouseDown send: #value to: [container delete.].
	help top: close height.
	container addMorph: close; addMorph: help.
	
	container openInHand.