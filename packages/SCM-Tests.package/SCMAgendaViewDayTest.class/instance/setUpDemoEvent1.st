running
setUpDemoEvent1

	self event1: (SCMEvent new
		title: 'demoEvent1';
		color: Color green;
		begin: DateAndTime today;
		end: DateAndTime today + 1;
		yourself)