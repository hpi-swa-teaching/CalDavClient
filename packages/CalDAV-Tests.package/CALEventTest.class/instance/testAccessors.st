testing
testAccessors
	| event |
	
	event := self demoEvent.
		
	self assert: (event begin  = self begin).
	self assert: (event end = self end).
	self assert: (event title = self title).
	self assert: (event description = self description).
	self assert: (event participants = self participants)