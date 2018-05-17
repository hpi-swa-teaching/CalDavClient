toolbuilding
editEvent
	self parent deleteEvent: self oldEvent.
	self parent addEvent: self event.
	self close
	