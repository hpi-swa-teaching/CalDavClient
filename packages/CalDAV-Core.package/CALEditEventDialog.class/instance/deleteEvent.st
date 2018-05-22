as yet unclassified
deleteEvent

	self halt.
	self parent deleteEvent: self oldEvent.
	
	self close