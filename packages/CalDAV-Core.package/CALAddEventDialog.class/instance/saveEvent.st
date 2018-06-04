actions
saveEvent
	
	self event isValid 
		ifFalse: [self highlightErrors]
		ifTrue: [	self parent addEvent: event.
				self close]