accessing
testErrorEventNotInCalendar
	

	self assert:	([self demoCalendar errorEventNotInCalendar: self createDummyEvent] on: NotFound do: [true]).