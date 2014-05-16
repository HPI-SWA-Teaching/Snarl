as yet unclassified
resetVanishTimer
	vanishTime := TimeStamp now + self vanishDelay.
	self resetAlpha.