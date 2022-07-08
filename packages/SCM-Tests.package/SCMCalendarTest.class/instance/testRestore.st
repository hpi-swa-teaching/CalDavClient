accessing
testRestore

	self demoCalendar events add: self createDummyEvent.
	self assert: self demoCalendar isEmpty not.
	self demoCalendar synchronize.
	self assert: self demoCalendar isEmpty
	