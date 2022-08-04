running
createFutureTestEvent

	^ SCMEvent new
		title: 'Future Event';
		begin: Date tomorrow;
		end: Date tomorrow + 3;	
		color: Color green;
		yourself