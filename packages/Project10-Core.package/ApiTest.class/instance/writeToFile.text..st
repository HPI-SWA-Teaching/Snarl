accessing
writeToFile: aPath text: aText
|file|
[  
  file := FileStream newFileNamed: aPath. 
  file nextPutAll: aText.
  file close] ensure: [file close]. 