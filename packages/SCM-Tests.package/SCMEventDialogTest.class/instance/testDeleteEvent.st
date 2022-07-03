testing
testDeleteEvent
	
	self assert: (self calendar events includes: self demoEvent).
	self editDialog deleteEvent.
	self assert: (self calendar events includes: self demoEvent) not.