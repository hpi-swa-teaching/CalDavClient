running
createEvent

	^ SCMEvent new
			begin: (DateAndTime year: 2022 month: 8 day: 3 hour: 18 minute: 42);
			end: (DateAndTime year: 2022 month: 8 day: 3 hour: 19 minute: 15);
			title: 'Test';
			description: 'Sehr wichtig';
			location: 'Aufm Dach vom HPI';
			participants: 'Na wir halt';
			color: Color green;
			yourself