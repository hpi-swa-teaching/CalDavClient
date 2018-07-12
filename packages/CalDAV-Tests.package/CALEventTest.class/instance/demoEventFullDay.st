constants
demoEventFullDay

	| event |
	
	event := CALEvent new.
	event begin: (DateAndTime year: 2018 month: 12 day: 24 hour: 00 minute: 00);
		end: (DateAndTime year: 2018 month: 12 day: 24 hour: 23 minute: 59);
		title: self title;
		description: 'fullday';
		participants: self participants.
	
	^ event