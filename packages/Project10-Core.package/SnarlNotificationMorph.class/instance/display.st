as yet unclassified
display
	WorldState addDeferredUIMessage: [
		self position: self unoccupiedPosition.
		self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
		World addMorph: self.
		self resetVanishTimer.
		self startStepping.
		SnarlNotification sound play.
		].