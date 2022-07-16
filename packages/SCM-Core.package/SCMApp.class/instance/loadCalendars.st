forwarding
loadCalendars

	self calendarRepository loadCalendars.
	self calendarRepository isEmpty
		ifTrue: [self calendarRepository 
				addCalendar: (SCMCalendar 
					newNamed: 'Default Calendar 1' withDefaultColor: Color red);
				addCalendar: (SCMCalendar 
					newNamed: 'Default Calendar 2' withDefaultColor: Color blue)]