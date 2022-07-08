forwarding
loadCalendars

	self calendarRepository loadCalendars.
	self calendarRepository isEmpty ifTrue: [self calendarRepository addNewCalendar: (SCMCalendar
			newNamed: 'Default' withDefaultColor: Color red)]