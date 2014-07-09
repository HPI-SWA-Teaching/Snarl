initialization
openHelp
	| help |
	help := ScrollableField new.

	help  color: (Color r: 0.972 g: 0.972 b: 0.662);
	 retractable: false; scrollBarOnLeft: false;
	 wantsFrameAdornments: false;
	width: 600; height:600;
	setMyText:  Snarl comment.
	help openInHand.