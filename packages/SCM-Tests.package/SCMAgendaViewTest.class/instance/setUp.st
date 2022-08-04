running
setUp

	| pastEvent currentEvent futureEvent |
	
	pastEvent := self createPastTestEvent.
	currentEvent := self createCurrentTestEvent.
	futureEvent := self createFutureTestEvent.
	
	self wantsToTest: (SCMAgendaView createWithEvents: {pastEvent. currentEvent. futureEvent} andSelectedDate: DateAndTime today asDate) scroller submorphs first