testing
testTimespan
	| event |
	
	event := self createEvent.
		
	self assert: (event timespan =  (Timespan starting: self start ending: self end))