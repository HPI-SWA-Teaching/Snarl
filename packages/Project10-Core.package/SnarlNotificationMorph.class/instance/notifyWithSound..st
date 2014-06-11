as yet unclassified
notifyWithSound: sound
	WorldState addDeferredUIMessage: [
		self position: self unoccupiedPosition.
		self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
		World addMorph: self.
		sound ifTrue: [self playSound].
		self resetVanishTimer.
		self startStepping].