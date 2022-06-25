forwarding
loadCalendars

	self calendarManager loadCalendars.
	self calendarManager calendarRepository
		ifEmpty: [self calendarManager addCalendar: (SCMCalendar
			newWithName: 'Default' andEvents: {} asSortedCollection)]