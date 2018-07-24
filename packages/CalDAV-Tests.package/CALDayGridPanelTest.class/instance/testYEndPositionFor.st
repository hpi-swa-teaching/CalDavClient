testing
testYEndPositionFor

	| fullDayEvent event |
	
	fullDayEvent := CALEvent new
						begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 0);
						end: (DateAndTime year: 2018 month: 5 day: 17 hour: 11 minute: 0);
						makeFullDay.
	event := CALEvent new
						begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 0 minute: 0);
						end: (DateAndTime year: 2018 month: 5 day: 17 hour: 11 minute: 0).
	self assert: (self dayGrid yEndPositionFor: fullDayEvent) equals: 1/25 description: 'Full Day Events should be displayed at the top'.
	self assert: (self dayGrid yEndPositionFor: event) equals: 12/25 description: 'Event should be displayed according to begin time in a 25grid'.
	event end: (DateAndTime year: 2018 month: 5 day: 17 hour: 17 minute: 0).
	self assert: (self dayGrid yEndPositionFor: event) equals: 18/25 description: 'Event should be displayed according to begin time in a 25grid'.
