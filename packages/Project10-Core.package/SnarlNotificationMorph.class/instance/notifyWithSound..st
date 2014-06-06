as yet unclassified
notifyWithSound: mute
	WorldState addDeferredUIMessage: [
		self position: self unoccupiedPosition.
		self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
		World addMorph: self.
		mute ifFalse: [self playSound].
		self resetVanishTimer.
		self startStepping].