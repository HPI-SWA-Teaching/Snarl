Use me to notify the user of events interesting enough to display, but not interesting enough to interrupt whatever the user is doing. You can use me very easily. Just copy one of these lines to your code and I will notify the user:
	
	Snarl notifyWithLabel: 'Something happened!' body: 'An important event just occurred.'
	Snarl notifyWithLabel: 'The time' body: (TimeStamp now) asString
	
	Label is a the title and body is the text under the title.
	
	If you want to emphase the message, you can change the icon type from the standard 		#Squeak to: 
		#Error 
		#Warning
		#Information
	
	Snarl notifyWithLabel: 'The time' body: (TimeStamp now) asString type: #Information
		
	
Users Preferences:
	You can change my preferences by going to Apps - Snarl
	If you want to set my preferences in workspace, you have these options:
		Snarl soundOn
		Snarl soundOff
		Snarl setInternalMode 
		Snarl setExternalMode 
		Snarl turnOn
		Snarl turnOff
	

2014 SWT-Project10
Jan-Peter Heuzeroth, Juliane Imme, Michael Janke,
Onat Türkçüoğlu, Tamara Slosarek

Thanks to: Tony Garnock-Jones (Snarl Developer)

sound: by Kastenfrosch (http://www.freesound.org/people/Kastenfrosch/sounds/162464/) (CC0)

ICONS:

speaker/ speaker_mute: Drawn with Inkscape by Tamara Slosarek based on Speaker designed by Harold Kim from the Noun Project (http://thenounproject.com/term/speaker/1898/) (CC -- Attribution)

standby: Drawn with Inkscape by Tamara Slosarek based on Power designed by useiconic.com from the Noun Project (http://thenounproject.com/term/power/45462/) (CC -- Attribution)

internal: Drawn with Inkscape by Tamara Slosarek based on Internal designed by Icons8 from the Noun Project (http://thenounproject.com/term/internal/50357/) (CC -- Attribution)
external: Drawn with Inkscape by Tamara Slosarek based on External designed by Icons8 from the Noun Project (http://thenounproject.com/term/external/50351/) (CC -- Attribution)

squeak: 
error: Drawn with Inkscape by Tamara Slosarek
warning: Drawn with Inkscape by Tamara Slosarek
information: Drawn with Inkscape by Tamara Slosarek



Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.