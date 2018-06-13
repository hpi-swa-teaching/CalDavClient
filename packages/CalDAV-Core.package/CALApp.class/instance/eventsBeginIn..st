accessing
eventsBeginIn: aTimespan 

	| selectedEvents |
	
	selectedEvents := self selectedCalendar events
		select: [ :each | (each begin >= aTimespan start) and: [each begin < aTimespan end] ].
	 ^ selectedEvents