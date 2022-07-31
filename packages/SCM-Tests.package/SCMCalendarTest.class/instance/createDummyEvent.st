accessing
createDummyEvent

	^ SCMEvent new
			begin: self demoDateAndTime;
			end: self demoDateAndTime;
			title: 'What up?';
			description: 'whatever';
			location: 'Potsdam';
			participants: 'everyone';
			color: Color gray;
			yourself