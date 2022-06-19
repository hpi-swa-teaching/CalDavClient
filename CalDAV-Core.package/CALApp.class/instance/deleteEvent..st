event management
deleteEvent: aCALEvent

	(self findCalendarFor: aCALEvent) deleteEvent: aCALEvent.
	self updateView