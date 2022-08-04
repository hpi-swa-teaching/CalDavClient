running
createCurrentTestEvent

	^ SCMEvent new
		title: 'Current Event';
		begin: Date today;
		end: Date today;	
		yourself