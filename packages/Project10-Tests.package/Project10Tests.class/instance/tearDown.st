testing
tearDown

	WorldState deferredUIMessages flush.
	SnarlNotificationMorph allInstancesDo: [ :notifactionMorph | notifactionMorph abandon ].