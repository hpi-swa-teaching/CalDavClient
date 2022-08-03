testing
testReset

	self assert: self demoCalendarRepository isEmpty not.
	self demoCalendarRepository reset.
	self assert: self demoCalendarRepository isEmpty