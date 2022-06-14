as yet unclassified
setUp

	self demoEvent: (SCMEvent new
		begin: self begin;
		end: self end;
		title: self title;
		description: self description;
		location: self location;
		participants: self participants;
		yourself).
		
	self defaultEvent: SCMEvent new.
		