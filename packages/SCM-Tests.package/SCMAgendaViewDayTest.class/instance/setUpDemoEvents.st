running
setUpDemoEvents

	self event1: (SCMEvent new
		title: 'demoEvent';
		color: Color green;
		begin: DateAndTime today;
		end: DateAndTime today
		yourself).
	
	self event2: (SCMEvent new
		title: 'demoEvent2';
		color: Color banana;
		begin: DateAndTime today;
		end: DateAndTime today;
		yourself)