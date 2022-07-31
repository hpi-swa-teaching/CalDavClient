actions
deleteEvent: aSCMEvent

	self events 
		remove: aSCMEvent 
		ifAbsent: [^ self errorEventNotInCalendar: aSCMEvent].
	self updateLastModified.
	self store.
	self changed: #calendarChanged