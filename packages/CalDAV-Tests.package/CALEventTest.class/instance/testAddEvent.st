testing
testAddEvent
	| event |
	
	event := CALEvent new.
	event begin: self start;
		end: self end;
		title: self title;
		description: self description;
		participants: self participants.
		
	self assert: (event begin  = self start).
	self assert: (event end = self end).
	self assert: (event title == self title).
	self assert: (event description == self description).
	self assert: (event participants == self participants).
	self assert: (event timespan =  (Timespan starting: self start ending: self end))