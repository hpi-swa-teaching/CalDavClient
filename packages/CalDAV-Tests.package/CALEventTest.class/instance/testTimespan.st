testing
testTimespan
	| event |
	
	event := self createEvent.
		
	self assert: (event timespan =  (Timespan starting: self begin ending: self end))