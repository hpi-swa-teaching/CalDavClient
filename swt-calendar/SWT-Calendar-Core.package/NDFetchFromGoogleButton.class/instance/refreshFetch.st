as yet unclassified
refreshFetch
	| googleAppointments collectedEvents eventNames dayList currentButton intermediateStep|
		
		[googleAppointments := NDFetchAppointments fetchFromGoogle.] on: ConnectionClosed do: [
			|waitDialog|
			waitDialog := PHDialog new.
			waitDialog content: (PHLabel new; text: 'Connection was closed, please wait 5 seconds. Calendar will be automatically refreshed.'); openInHand.
			Transcript show: ''.
			(Delay forSeconds:5)wait.
			waitDialog abandon.
			googleAppointments := NDFetchAppointments fetchFromGoogle.] 
		on: CalDavRetryException do: [
			|waitDialog|
			waitDialog := PHDialog new.
			waitDialog content: (PHLabel new; text: 'Rety error, please wait 7 seconds. Calendar will be automatically refreshed.'); openInHand.
			Transcript show: ''.
			(Delay forSeconds:7)wait.
			waitDialog abandon.
			googleAppointments := NDFetchAppointments fetchFromGoogle.].

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
					"eventNames := collectedEvents collect: #summary. 
					currentButton eventLabel: (eventNames joinSeparatedBy: '.
')."
					outerEach events: collectedEvents.].