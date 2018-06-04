as yet unclassified
saveEvent
	
	self event isValid
		ifTrue: [self parent deleteEvent: self oldEvent.
				self parent addEvent: self event.
				self close]