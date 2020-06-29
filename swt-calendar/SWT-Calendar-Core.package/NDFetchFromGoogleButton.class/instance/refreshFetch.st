as yet unclassified
refreshFetch
	| googleAppointments collectedEvents dayList currentButton intermediateStep|
	
	self class testConnection.
	googleAppointments := self class fetchFromGoogle.

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
					outerEach events: collectedEvents.].