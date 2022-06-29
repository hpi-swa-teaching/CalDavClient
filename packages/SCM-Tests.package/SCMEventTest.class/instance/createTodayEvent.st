as yet unclassified
createTodayEvent

	^ SCMEvent new
			begin: DateAndTime today;
			end: DateAndTime today;
			title: 'What up?';
			description: 'whatever';
			location: 'Potsdam';
			participants: 'everyone';
			yourself