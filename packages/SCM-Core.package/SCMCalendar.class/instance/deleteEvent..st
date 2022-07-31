actions
deleteEvent: aSCMEvent

	"self synchronize."
	self events 
		remove: aSCMEvent 
		ifAbsent: [^ self errorEventNotInCalendar: aSCMEvent].
	self store.
	self changed: #calendarChanged.
	self updateLastModified