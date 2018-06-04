as yet unclassified
saveEvent
	
	self event isValid
		ifFalse: [self highlightErrors]
		ifTrue: [self parent deleteEvent: self oldEvent.
				self parent addEvent: self event.
				self close]