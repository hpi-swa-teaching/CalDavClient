testing
testOverlaps
	| event1 event2 event3 |
	
	event1 := self demoEvent.
	event2 := self demoEventFullDay.
	event3 := self demoEvent2.
	
	self assert: ((event1 overlaps: event2) not).
	self assert: (event1 overlaps: event3)
		