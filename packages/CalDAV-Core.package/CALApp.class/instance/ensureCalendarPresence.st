initialize
ensureCalendarPresence

	self calendars isEmpty ifTrue: [self 
			addCalendar: (CALCalendar withName: 'Privat');
			showEventsForCalendar: 1 put: true]