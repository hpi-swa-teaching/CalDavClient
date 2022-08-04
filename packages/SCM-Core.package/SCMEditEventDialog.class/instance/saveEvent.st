actions
saveEvent
	
	(self isValid and: [self calendarList hasEditableCalendars])
		ifFalse: [self highlightErrors]
		ifTrue: [self selectedCalendar addEvent: self generateEvent.
			self deleteOldEvent.
			self close]