Use me to notify the user of events interesting enough to display, but not interesting enough to interrupt whatever the user is doing. You can use me very easily. Just copy one of this lines to your code and i will notify the user:
	
	Snarl notifyWithLabel: 'Something happened!' body: 'An important event just occurred.'
	Snarl notifyWithLabel: 'The time' body: (TimeStamp now)
	
	Body is a the title and body is the text under the title.
	
	If you want to emphase the message, you can change the icon type to: #Error, #Warning, #Information
	
	Snarl notifyWithLabel: 'The time' body: (TimeStamp now) icon: #Information
	
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