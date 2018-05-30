accessing
deleteEvent: anEvent

	self events remove: anEvent ifAbsent: [self errorEventNotInCalendar: anEvent].
	self storeEvents