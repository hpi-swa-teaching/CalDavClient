actions
addEvent: aSCMEvent

	self events add: aSCMEvent.
	aSCMEvent calendar: self.
	self store.
	self changed: #calendarChanged.
	self updateLastModified