running
setUpDemoEvents

	self setUpDemoEvent1.
	self setUpDemoEvent2.
	
	self subject addEvent: self event1.
	self subject addEvent: self event2