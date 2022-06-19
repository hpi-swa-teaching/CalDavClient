testing
testGetEventBlockFor

	| event |
	
	event := CALEvent new 
				begin:(DateAndTime year: 2021 month: 1 day: 1 hour: 0 minute: 0);
				end: (DateAndTime year: 2021 month: 1 day: 1 hour: 11 minute: 0);
				title: 'test event'.
	self app addEvent: event.
	self assert: ((self deadlinesEventPanel getEventBlockFor: event) class = CALEventBlock)