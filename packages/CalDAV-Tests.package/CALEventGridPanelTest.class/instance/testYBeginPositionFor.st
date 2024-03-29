testing
testYBeginPositionFor

	| fullDayEvent event |
	
	fullDayEvent := CALEvent new
						begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 0);
						end: (DateAndTime year: 2018 month: 5 day: 17 hour: 11 minute: 0);
						makeFullDay.
	self app addEvent: fullDayEvent. 
	event := CALEvent new
						begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 0 minute: 0);
						end: (DateAndTime year: 2018 month: 5 day: 17 hour: 18 minute: 0).
	self app addEvent: event. 
	self assert: (self eventGrid yBeginPositionFor: fullDayEvent) equals: 0 description: 'Full Day Events should be displayed at the top'.
	self assert: (self eventGrid yBeginPositionFor: event) equals: 1/25 description: 'Event should be displayed according to begin time in a 25grid'.
	event begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 17 minute: 0).
	self assert: (self eventGrid yBeginPositionFor: event) equals: 18/25 description: 'Event should be displayed according to begin time in a 25grid'.
