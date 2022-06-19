actions
saveEvent
	
	self event isValid 
		ifFalse: [self highlightErrors]
		ifTrue: [	self app addEvent: self event.
				self close]