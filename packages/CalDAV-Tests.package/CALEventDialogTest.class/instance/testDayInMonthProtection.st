as yet unclassified
testDayInMonthProtection

	| oldValue |
	
	eventDialog event: self testEvent.
	oldValue := eventDialog eventBeginDay.
	eventDialog eventBeginDay: eventDialog event begin daysInMonth + 1.
	self assert: eventDialog eventBeginDay = oldValue.
	oldValue := eventDialog eventBeginDay.
	eventDialog eventBeginDay: -20.
	self assert: eventDialog eventBeginDay = oldValue