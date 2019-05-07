constants
demoEventDuringDemoEvent

	| event |
	
	event := CALEvent new.
	event begin: (DateAndTime year: 2018 month: 12 day: 24 hour: 19 minute: 0);
		end: (DateAndTime year: 2018 month: 12 day: 24 hour: 19 minute: 30);
		title: self title;
		description: self description;
		participants: self participants.
	
	^ event