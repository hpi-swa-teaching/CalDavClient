testing
testAccessors
	| event |
	
	event := self createEvent.
		
	self assert: (event begin  = self start).
	self assert: (event end = self end).
	self assert: (event title == self title).
	self assert: (event description == self description).
	self assert: (event participants == self participants)