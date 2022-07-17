forwarding
loadCalendars

	self calendarRepository loadCalendars.
	self calendarRepository isEmpty
		ifTrue: [self calendarRepository addDefaultCalendars]