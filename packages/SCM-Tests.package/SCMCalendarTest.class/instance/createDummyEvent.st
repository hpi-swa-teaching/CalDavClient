accessing
createDummyEvent

	^ SCMEvent new
			begin: self demoDateAndTime;
			end: self demoDateAndTime;
			title: 'What up?';
			color: Color gray;
			yourself