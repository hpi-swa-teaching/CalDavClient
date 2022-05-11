testing
testMonthProtection

	| oldValue |
	
	self eventDialog event: self demoEvent.
	oldValue := self eventDialog eventBeginMonth.
	self eventDialog eventBeginMonth: 13.
	self assert: self eventDialog eventBeginMonth = oldValue.
	oldValue := self eventDialog eventBeginMonth.
	self eventDialog eventBeginMonth: -4.
	self assert: self eventDialog eventBeginMonth = oldValue