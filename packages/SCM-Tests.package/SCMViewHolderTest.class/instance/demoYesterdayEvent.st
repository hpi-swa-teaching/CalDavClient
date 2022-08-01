accessing
demoYesterdayEvent

	^ SCMEvent new
			title: 'Bank ausrauben';
			begin: (DateAndTime date: self demoDateYesterday time: self demoEventsStartTime);
			end: (DateAndTime date: self demoDateYesterday time: self demoEventsEndTime);
			location: 'Bank';
			color: Color blue;
			yourself