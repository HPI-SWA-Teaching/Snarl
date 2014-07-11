sound
sound
	Sound 
		ifNil: [Sound := SampledSound new setSamples: self soundBuffer samplingRate: 44100].
	^Sound