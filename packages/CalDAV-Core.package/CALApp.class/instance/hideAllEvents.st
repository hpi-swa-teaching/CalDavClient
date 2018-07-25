event management
hideAllEvents

	1 to: self calendars size do: [ :each | self showEventsForCalendar: each put: false]