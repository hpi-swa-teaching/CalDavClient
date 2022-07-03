accessing
addEvent: aSCMEvent

	self events add: aSCMEvent.
	aSCMEvent calendar: self;
		addDependent: self.
	self store.
	self changed: #calendarChanged