testing
testDeleteEvent
	
	self assert: (self demoCalendar events includes: self demoEvent).
	self editDialog deleteEvent.
	self assert: (self demoCalendar events includes: self demoEvent) not.