testing
testDeleteEvent
	
	self assert: (self calendar events includes: self demoEvent).
	self editDialog deleteOldEvent.
	self assert: (self calendar events includes: self demoEvent) not.