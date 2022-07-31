initialization
setUpEventsFor: aSCMCalendar
	
	aSCMCalendar events do: [:event | event calendar: aSCMCalendar].
	aSCMCalendar events: aSCMCalendar events asSortedCollection