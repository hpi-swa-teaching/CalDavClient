event management
deleteEvent: anEvent

	self selectedCalendar deleteEvent: anEvent.
	self updateView