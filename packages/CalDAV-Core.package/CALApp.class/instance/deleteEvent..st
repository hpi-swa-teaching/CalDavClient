event management
deleteEvent: anEvent

	(self findCalendarFor: anEvent) deleteEvent: anEvent.
	self updateView