constants
demoEventMultipleDay

	| event |
	
	event := CALEvent new.
	event begin: (DateAndTime year: 2018 month: 12 day: 22 hour: 00 minute: 00);
		end: (DateAndTime year: 2018 month: 12 day: 24 hour: 3 minute: 59);
		title: self title;
		description: 'fullday';
		participants: self participants.
	
	^ event