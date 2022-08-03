testing
testReset

	self assert: self calendarRepository isEmpty not.
	self calendarRepository reset.
	self assert: self calendarRepository isEmpty