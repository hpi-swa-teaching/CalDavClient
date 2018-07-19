as yet unclassified
testEventAdding
	
	self assert: self app selectedCalendar isEmpty description: 'test assumes no events are present'.
	self app selectedCalendar 
		addEvent: self demoEvent;
		addEvent: self demoEvent2.
	self assert: self app selectedCalendar events first equals: self demoEvent description: 'Demo event should be the first in calendar'.
	self assert: self app selectedCalendar events last equals: self demoEvent2 description: 'Demo event 2 should be the last in calendar'