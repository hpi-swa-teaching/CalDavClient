as yet unclassified
deleteEvent: anEvent

	self selectedCalendar deleteEvent: anEvent.
	self changed: #eventNames