accessing
addEvent: aSCMEvent

	self synchronize.
	self events add: aSCMEvent.
	aSCMEvent calendar: self.
	self store.
	self changed: #calendarChanged