accessing
demoTomorrowEvent

	^ SCMEvent new
			title: 'Bank ausrauben';
			begin: (DateAndTime date: self demoDateTomorrow time: self demoEventsStartTime);
			end: (DateAndTime date: self demoDateTomorrow time: self demoEventsEndTime);
			location: 'Bank';
			color: Color blue;
			yourself