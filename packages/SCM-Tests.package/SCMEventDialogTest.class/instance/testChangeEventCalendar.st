testing
testChangeEventCalendar

	self editDialog
		load: self demoTomorrowEvent.
	self editDialog saveEvent.
	
	self assert: (self calendar events includes: self demoEvent) not.
	self assert: (self calendar events includes: self demoTomorrowEvent).