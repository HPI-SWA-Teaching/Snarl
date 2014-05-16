accessing
messageBox: aTitle text: aText
	"48 -> 0x30 -> Warning"
	self apiMessageBox: nil text: aText title: aTitle flags: 48