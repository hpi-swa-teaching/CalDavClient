actions
saveEvent
	
	self event isValid 
		ifFalse: [self highlightErrors]
		ifTrue: [	self parent addEvent: self event.
				self close]