accessing
eventNamesBeginIn: aTimespan 

	| selectedEvents |
	
	selectedEvents := self selectedCalendar events
		select: [ :each | (each begin >= aTimespan start) and: [each begin < aTimespan end] ].
	 ^ selectedEvents collect: [ :each | ((CALEvent timeString: (each begin)), '   ' ,each title) ]