accessing
saveEvent
	
	self isValid
		ifFalse: [self highlightErrors]
		ifTrue: [self app 
					deleteEvent: self oldEvent;
					addEvent: self event.
				self close]