as yet unclassified
refreshFetch
	| sabreAppointments |
	
	(SCSabreCalDavClient establishedConnection) = true
	ifTrue: [
	self class testConnection.
	sabreAppointments := self class fetchFromSabre.
		calendar eventsDictionary removeAll.
		calendar updateOrCreateEventsFrom: sabreAppointments.
		sabreAppointments := calendar eventsDictionary asOrderedCollection.
		calendar refreshEventsInWindow.
		dayList showEvents.].