as yet unclassified
notify
	WorldState addDeferredUIMessage: [
		self position: self unoccupiedPosition.
		self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
		World addMorph: self.
		self playSound.
		self resetVanishTimer.
		self startStepping].