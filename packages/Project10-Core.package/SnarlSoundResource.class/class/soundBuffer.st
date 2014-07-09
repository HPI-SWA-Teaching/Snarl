as yet unclassified
soundBuffer
	^SoundBuffer fromByteArray: (self soundResource base64Decoded) asByteArray.