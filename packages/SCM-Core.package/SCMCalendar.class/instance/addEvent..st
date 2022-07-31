actions
addEvent: aSCMEvent

	self events add: aSCMEvent.
	aSCMEvent calendar: self.
	self updateLastModified.
	self store.
	self changed: #calendarChanged