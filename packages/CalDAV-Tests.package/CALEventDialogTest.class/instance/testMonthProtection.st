as yet unclassified
testMonthProtection

	| oldValue |
	
	eventDialog event: self testEvent.
	oldValue := eventDialog eventBeginMonth.
	eventDialog eventBeginMonth: 13.
	self assert: eventDialog eventBeginMonth = oldValue.
	oldValue := eventDialog eventBeginMonth.
	eventDialog eventBeginMonth: -4.
	self assert: eventDialog eventBeginMonth = oldValue.