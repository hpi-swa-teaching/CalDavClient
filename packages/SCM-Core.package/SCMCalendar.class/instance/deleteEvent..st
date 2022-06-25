accessing
deleteEvent: aSCMEvent

	self events 
		remove: aSCMEvent 
		ifAbsent: [^ self errorEventNotInCalendar: aSCMEvent].
	self store.
	self changed: #eventsChanged