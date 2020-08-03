as yet unclassified
refreshFetch
	| sabreAppointments collectedEvents dayList currentButton intermediateStep|
	
	(SCSabreCalDavClient establishedConnection) = true
	ifTrue: [
	self class testConnection.
	sabreAppointments := self class fetchFromSabre.

		SCCalDavCalendar nDCal: nil.
		SCCalDavCalendar nDCal: (SCCalDavCalendar new updateOrCreateEventsFrom: sabreAppointments).
		sabreAppointments := SCCalDavCalendar nDCal eventsDictionary asOrderedCollection.
		dayList := self dayList.
		dayList do: [:outerEach |
					currentButton := outerEach.
					intermediateStep := currentButton submorphs.
					currentButton := intermediateStep last.
					collectedEvents := sabreAppointments select: [:innerEach | 
						(innerEach serverData) start asDate asString = outerEach date asString]. 
					outerEach events: collectedEvents.].].