accessing
deleteEvent: aCALEvent
	self events remove: aCALEvent ifAbsent: [Transcript show: 'Event not found']
	