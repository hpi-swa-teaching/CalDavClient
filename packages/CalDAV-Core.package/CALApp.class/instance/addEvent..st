as yet unclassified
addEvent: anEvent

	self selectedCalendar addEvent: anEvent.
	self changed: #eventNames