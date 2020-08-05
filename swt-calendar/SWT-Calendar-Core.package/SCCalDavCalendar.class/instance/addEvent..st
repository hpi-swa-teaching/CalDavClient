events handling
addEvent: anEvent

	self eventsDictionary at: (anEvent url path at: self urlPathPosition) asSymbol put: anEvent.
	anEvent
		setClean;
		calendar: self