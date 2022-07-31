accessing
createDummyEvent

	^ SCMEvent new
			begin: DateAndTime today;
			end: DateAndTime today;
			title: 'What up?';
			description: 'whatever';
			location: 'Potsdam';
			participants: 'everyone';
			color: Color gray;
			yourself