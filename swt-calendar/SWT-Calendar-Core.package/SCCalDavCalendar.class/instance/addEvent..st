as yet unclassified
addEvent: anEvent

	self eventsDictionary at: (anEvent url path at: 6) asSymbol put: anEvent.
	anEvent
		setClean;
		calendar: self