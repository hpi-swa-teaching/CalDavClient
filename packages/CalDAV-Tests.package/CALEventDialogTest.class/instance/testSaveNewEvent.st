testing
testSaveNewEvent

	| de1 de2 |
	
	de1 := self demoEvent.
	de2 := self demoEvent2.
	app addEvent: de1.
	
	addDialog 
		parent: app;
		event: de2;
		saveEvent.
		
	self assert: (app selectedCalendar events includes: de1).
	self assert: (app selectedCalendar events includes: de2)
	