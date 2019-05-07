constants
demoEvent2

	| event |
	
	event := CALEvent new.
	event begin: self begin;
		end: self end;
		title: self title;
		description: 'too much drunk familiy! #321';
		participants: self participants.
	
	^ event