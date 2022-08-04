running
createFutureTestEvent

	^ SCMEvent new
			title: 'Future Event';
			begin: Date tomorrow asDateAndTime;
			end: (Date tomorrow + 3) asDateAndTime;
			color: Color green;
			yourself