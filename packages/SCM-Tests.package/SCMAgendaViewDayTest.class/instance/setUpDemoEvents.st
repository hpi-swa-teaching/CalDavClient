running
setUpDemoEvents

	self demoEvent: (SCMEvent new
		title: 'demoEvent';
		color: Color green;
		begin: DateAndTime today;
		end: DateAndTime today
		yourself).
	
	self demoEvent2: (SCMEvent new
		title: 'demoEvent2';
		color: Color banana;
		begin: DateAndTime today;
		end: DateAndTime today;
		yourself)