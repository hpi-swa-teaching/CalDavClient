actions
saveEvent
	
	self isValid 
		ifFalse: [self highlightErrors]
		ifTrue: [self calendarManager addEvent: self generateEvent.
				self close]