running
createPastTestEvent

	^ SCMEvent new
			title: 'Past Event';
			begin: (Date yesterday - 1) asDateAndTime;
			end: Date yesterday asDateAndTime;
			color: Color green;
			yourself