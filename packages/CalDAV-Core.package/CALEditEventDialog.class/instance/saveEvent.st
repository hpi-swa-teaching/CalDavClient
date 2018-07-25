accessing
saveEvent
	
	self event isValid
		ifFalse: [self highlightErrors]
		ifTrue: [self app 
					deleteEvent: self oldEvent;
					addEvent: self event.
				self close]