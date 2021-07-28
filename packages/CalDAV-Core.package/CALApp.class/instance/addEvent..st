event management
addEvent: aCALEvent

	self selectedEditableCalendar addEvent: aCALEvent.
	self updateView