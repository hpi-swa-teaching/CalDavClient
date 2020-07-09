accessing
refreshOnStartup

	| googleAppointments collectedEvents dayList currentButton intermediateStep |
	(NDGoogleCalDavClient establishedConnection) isNil
		ifTrue: [NDGoogleCalDavClient establishedConnection: 0.
				NDGoogleButton GoogleClientSetNil.
				NDGoogleCalDavClient calendarID: nil].
	(NDGoogleCalDavClient establishedConnection) = 4
	ifTrue: [
	NDFetchFromGoogleButton testConnection.
	googleAppointments := NDFetchFromGoogleButton fetchFromGoogle.

		NDCalDavCalendar nDCal: nil.
		NDCalDavCalendar nDCal: (NDCalDavCalendar new updateOrCreateEventsFrom: googleAppointments).
		googleAppointments := NDCalDavCalendar nDCal eventsDictionary asOrderedCollection. 
		dayList := self dayList.
		dayList do: [:outerEach |
					currentButton := outerEach.
					intermediateStep := currentButton submorphs.
					currentButton := intermediateStep last.
					collectedEvents := googleAppointments select: [:innerEach | 
						(innerEach serverData) start asDate asString = outerEach date asString]. 
					outerEach events: collectedEvents.].].