accessing
refreshOnStartup

	| googleAppointments collectedEvents dayList currentButton intermediateStep |
	
	(SCGoogleCalDavClient establishedConnection) = 4
	ifTrue: [
	SCFetchFromGoogleButton testConnection.
	googleAppointments := SCFetchFromGoogleButton fetchFromGoogle.

		SCCalDavCalendar nDCal: nil.
		SCCalDavCalendar nDCal: (SCCalDavCalendar new updateOrCreateEventsFrom: googleAppointments).
		googleAppointments := SCCalDavCalendar nDCal eventsDictionary asOrderedCollection. 
		dayList := self dayList.
		dayList do: [:outerEach |
					currentButton := outerEach.
					intermediateStep := currentButton submorphs.
					currentButton := intermediateStep last.
					collectedEvents := googleAppointments select: [:innerEach | 
						(innerEach serverData) start asDate asString = outerEach date asString]. 
					outerEach events: collectedEvents.].].