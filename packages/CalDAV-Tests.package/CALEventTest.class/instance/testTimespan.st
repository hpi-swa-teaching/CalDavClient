testing
testTimespan
	| event |
	
	event := self demoEvent.
		
	self assert: (event timespan =  (Timespan starting: self begin ending: self end))