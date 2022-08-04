running
setUpDemoEvent2
	
	self event2: (SCMEvent new
		title: 'demoEvent2';
		color: Color banana;
		begin: DateAndTime today + 2;
		end: DateAndTime today + 3;
		yourself)