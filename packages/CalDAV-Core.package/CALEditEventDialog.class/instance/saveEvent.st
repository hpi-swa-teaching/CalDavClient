accessing
saveEvent
	
	self event isValid
		ifFalse: [self highlightErrors]
		ifTrue: [self parent 
					deleteEvent: self oldEvent;
					addEvent: self event.
				self close]