as yet unclassified
testEventAdding
	
	self assert: app selectedCalendar isEmpty description: 'test assumes no events are present'.
	app selectedCalendar 
		addEvent: self demoEvent;
		addEvent: self demoEvent2.
	self assert: app selectedCalendar events first equals: self demoEvent description: 'Demo event should be the first in calendar'.
	self assert: app selectedCalendar events last equals: self demoEvent2 description: 'Demo event 2 should be the last in calendar'