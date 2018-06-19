event management
addEvent: anEvent

	self selectedCalendar addEvent: anEvent.
	self updateView