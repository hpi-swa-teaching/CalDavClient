testing
testBeginEndOrderCorrection

	| event |
	
	event := CALEvent new 
		title: 'Meeting';
		begin: (DateAndTime year: 2018 month: 5 day: 30 hour: 15 minute: 0);
		end: (DateAndTime year: 2018 month: 5 day: 30 hour: 15 minute: 0).
	event autocorrectBegin.
	self assert: event begin equals: (DateAndTime year: 2018 month: 5 day: 30 hour: 14 minute: 0).
	
	event := CALEvent new 
		title: 'Meeting';
		end: (DateAndTime year: 2018 month: 5 day: 30 hour: 15 minute: 0);
		begin: (DateAndTime year: 2018 month: 5 day: 30 hour: 15 minute: 0).
	event autocorrectEnd.
	self assert: event end equals: (DateAndTime year: 2018 month: 5 day: 30 hour: 16 minute: 0).