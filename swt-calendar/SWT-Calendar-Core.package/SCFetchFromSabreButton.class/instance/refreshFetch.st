as yet unclassified
refreshFetch
	| sabreAppointments collectedEvents|
	
	(SCSabreCalDavClient establishedConnection) = true
	ifTrue: [
	self class testConnection.
	sabreAppointments := self class fetchFromSabre.
		calendar eventsDictionary removeAll.
		calendar updateOrCreateEventsFrom: sabreAppointments.
		sabreAppointments := calendar eventsDictionary asOrderedCollection.
		calendar refreshEventsInWindow.
		dayList showEvents.
		"dayList do: [:outerEach |
					collectedEvents := sabreAppointments select: [:innerEach | 
						(innerEach serverData) start asDate asString = outerEach date asString]. 
					outerEach events: collectedEvents.].]."
 "Period or right bracket expected ->" "Period or right bracket expected ->"]