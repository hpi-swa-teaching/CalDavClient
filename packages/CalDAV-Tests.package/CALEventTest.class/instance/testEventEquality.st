testing
testEventEquality
	| anEvent anotherEvent |
	
	anEvent := self demoEvent.
	anotherEvent := self demoEvent2.
	
	self assert: (anEvent = anEvent).
	self assert: (anEvent ~= anotherEvent)