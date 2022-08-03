constants
demoTomorrowEvent

	^ SCMEvent new
			title: 'Meeting2';
			begin: (DateAndTime year: 2019 month: 5 day: 21 hour: 10 minute: 0);
			end: (DateAndTime year: 2019 month: 5 day: 22 hour: 11 minute: 0);
			location: 'Kitchen';
			participants: '';
			color: Color red;
			calendar: self calendar;
			yourself