testing
testErrorEventNotInCalendar
	

	self assert:	([self calendar errorEventNotInCalendar: self createDummyEvent] on: NotFound do: [true]).