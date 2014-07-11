layout
iconWithAlpha: newAlpha
	"Squeak color Implementierung ist leider buggy, deswegen auf Bitebene"
	^clearIcon form collectPixels: [:color| 
		| alpha new alphaMask|
		Transcript show: color asString, ' '.
		alphaMask := (65535) bitShift: 24.
		alpha:= (color bitAnd: alphaMask) bitShift: -24.
		new := (alpha * newAlpha) asInteger .
		new := new bitShift: 24.
		color := (color bitAnd: (alphaMask bitInvert)) bitOr: new. 
		Transcript show: color; cr. color
	].