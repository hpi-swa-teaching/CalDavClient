running
createCurrentTestEvent

	^ SCMEvent new
			title: 'Current Event';
			begin: Date today asDateAndTime;
			end: Date today asDateAndTime;
			yourself