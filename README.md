Snarl
===================
[![Build Status](https://travis-ci.org/HPI-SWA-Teaching/Snarl.svg)](https://travis-ci.org/HPI-SWA-Teaching/Snarl)

We are **Project-10** and we have extended **Snarl**, the notification service for Squeak, as part of the software engineering lecture at Hasso-Plattner-Intitute.  
Now it's possible to **display the notifications outside of Squeak** - **have fun!**


###Installing Snarl
**(1)**&nbsp; Get the git-repository.  
**(2)**&nbsp; In Squeak, add a new filetree-repository and choose the folder 'packages'.  
**(3)**&nbsp; Open the repository and install the packages **in this order**:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*... on MacOs and Windows*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(1)**&nbsp; FFI-Pools  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(2)**&nbsp; FFI-Kernel  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(3)**&nbsp; Project-10  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*... on Ubuntu*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(1)**&nbsp; install Libnotify \*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(2)**&nbsp; install the Squeak-Plugin CommandShell from SqueakSource \*\*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(3)**&nbsp; Project-10
	
If you want to test the internal function of Snarl also load Project-10-Tests.

\* for Ubuntu with 'sudo apt-get install libnotify-bin'  
\*\* http://www.squeaksource.com/CommandShell.html


###Using Snarl
After installing, check Snarl's class documentation to learn how to use it.


###Working on Snarl
If you want to develop and improve our Snarl, we created some issues which we considered useful as some suggestions.
