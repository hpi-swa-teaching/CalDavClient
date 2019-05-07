testing
testSaveNewEvent

	| de1 de2 |
	
	de1 := self demoEvent.
	de2 := self demoEvent2.
	self app addEvent: de1.
	
	self addDialog 
		app: self app;
		event: de2;
		saveEvent.
		
	self assert: (self app selectedCalendar events includes: de1).
	self assert: (self app selectedCalendar events includes: de2)
	