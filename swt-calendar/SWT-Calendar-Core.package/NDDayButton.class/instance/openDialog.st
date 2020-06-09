as yet unclassified
openDialog
	|googleAppointments eventsDict eventsICCal eventsCollection eventsData startTime|
	 googleAppointments := NDFetchAppointments fetchFromGoogle.
	eventsDict := Dictionary new.	
	eventsICCal := ICCalendar new.
	eventsCollection := Collection new.
	eventsData := ICEvent new.
	startTime := String new.
	Transcript clear.
	Transcript show: 'Appointments for ', self text, ': ';cr;cr.
	googleAppointments do:[:each |
		eventsDict := each.
		eventsICCal := eventsDict at: #calendarData.
		eventsCollection := eventsICCal events.
		eventsData := eventsCollection first.
		startTime := (eventsData start asDate)asString.
		startTime  = self text 
			ifTrue: [Transcript show: 'Appointment title: ', eventsData summary;cr.
			].
		].