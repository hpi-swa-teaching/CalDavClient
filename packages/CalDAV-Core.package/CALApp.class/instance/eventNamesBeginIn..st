accessing
eventNamesBeginIn: aTimespan 

	| selectedEvents |
	
	selectedEvents := self selectedCalendar events
		select: [ :each | (each begin >= aTimespan start) and: [each begin < aTimespan end] ].
	 ^ selectedEvents collect: [ :each | each title, '  ', each timeString ]