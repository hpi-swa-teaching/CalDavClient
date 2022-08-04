actions
saveEvent
	
	(self isValid and: [self calendarList hasEditableCalendars])
		ifFalse: [self highlightErrors]
		ifTrue: [self calendarList selectedEditableCalendar addEvent: self generateEvent.
			self close]