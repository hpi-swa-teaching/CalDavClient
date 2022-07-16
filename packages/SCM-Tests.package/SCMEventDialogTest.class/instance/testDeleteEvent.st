testing
testDeleteEvent
	
	self assert: (self demoCalendar events includes: self demoEvent).
	self editDialog deleteOldEvent.
	self assert: (self demoCalendar events includes: self demoEvent) not.