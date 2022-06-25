actions
generateEvent

	^ SCMEvent new
		begin: self begin;
		end: self end;
		title: self title;
		location: self location;
		description: self description;
		participants: self participants; "should include calendar"
		yourself
		
	