accessing
saveEvent
	
	self isValid
		ifFalse: [self highlightErrors]
		ifTrue: [self selectedCalendar addEvent: self generateEvent.
			self deleteOldEvent.
			self close]