accessing
testRestore

	self demoCalendar events add: self createDummyEvent.
	self assert: self demoCalendar isEmpty not.
	self demoCalendar restore.
	self assert: self demoCalendar isEmpty
	