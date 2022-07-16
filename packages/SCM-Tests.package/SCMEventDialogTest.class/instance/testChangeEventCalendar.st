testing
testChangeEventCalendar

	self editDialog
		load: self demoEvent2.
	self editDialog saveEvent.
	
	self assert: (self demoCalendar events includes: self demoEvent) not.
	self assert: (self demoCalendar events includes: self demoEvent2).