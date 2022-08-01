constants
demoEvent

	^ SCMEvent new
			title: 'Meeting';
			begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 0);
			end: (DateAndTime year: 2018 month: 5 day: 17 hour: 11 minute: 0);
			location: 'Office';
			participants: 'Minions';
			color: Color green;
			calendar: self calendar;
			yourself