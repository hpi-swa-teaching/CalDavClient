running
createPastTestEvent

	^ SCMEvent new
		title: 'Past Event';
		begin: Date yesterday - 1;
		end: Date yesterday;	
		color: Color green;
		yourself