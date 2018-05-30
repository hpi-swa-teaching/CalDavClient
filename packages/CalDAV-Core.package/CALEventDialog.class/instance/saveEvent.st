actions
saveEvent
	
	self event isValid 
		ifTrue: [	self parent addEvent: event.
				self close]