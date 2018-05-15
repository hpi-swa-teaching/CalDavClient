accessing
deleteEvent: aCALEvent
	self events remove: aCALEvent ifAbsent: []
	