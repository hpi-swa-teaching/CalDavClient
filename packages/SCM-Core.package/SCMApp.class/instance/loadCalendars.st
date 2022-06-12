initialization
loadCalendars

	self calendarManager loadCalendars.
	self calendarManager calendars
		ifEmpty: (self calendarManager addCalendar: (SCMCalendar
			newWithName: 'Default' andEvents: {} asSortedCollection))