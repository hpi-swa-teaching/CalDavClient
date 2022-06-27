accessing
saveEvent
	
	self isValid
		ifFalse: [self highlightErrors]
		ifTrue: [self calendarList selectedEditableCalendar addEvent: self generateEvent.
				self deleteEvent]