accessing
deleteEvent: aCALEvent

	self events remove: aCALEvent ifAbsent: [self errorEventNotInCalendar: aCALEvent].
	self store