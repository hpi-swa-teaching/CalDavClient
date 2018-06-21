accessing
addEvent: aCALEvent
	self events add: aCALEvent.
	self store
	