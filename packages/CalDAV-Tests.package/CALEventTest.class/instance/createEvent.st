constants
createEvent
	| event |
	
	event := CALEvent new.
	event begin: self start;
		end: self end;
		title: self title;
		description: self description;
		participants: self participants.
	
	^event