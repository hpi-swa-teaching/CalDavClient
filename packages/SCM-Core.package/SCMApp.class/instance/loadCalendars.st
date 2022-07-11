forwarding
loadCalendars

	self calendarRepository loadCalendars.
	self calendarRepository isEmpty
		ifTrue: [self calendarRepository 
				addNewCalendar: (SCMCalendar 
					newNamed: 'Default Calendar 1' withDefaultColor: Color red);
				addNewCalendar: (SCMCalendar 
					newNamed: 'Default Calendar 2' withDefaultColor: Color blue)]