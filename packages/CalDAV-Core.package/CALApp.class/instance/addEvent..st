event management
addEvent: anEvent

	self selectedEditableCalendar addEvent: anEvent.
	self updateView