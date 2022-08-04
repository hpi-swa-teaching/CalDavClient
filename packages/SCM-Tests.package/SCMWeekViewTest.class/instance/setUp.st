running
setUp

	| pastEvent currentEvent futureEvent |
	
	pastEvent := self createPastTestEvent.
	currentEvent := self createCurrentTestEvent.
	futureEvent := self createFutureTestEvent.
	
	self setUpMonday.
	
	self wantsToTest: (SCMWeekView createWithEvents: {pastEvent. currentEvent. futureEvent} andSelectedDate: self monday) scroller firstSubmorph