testing
testGreaterThan

	| nextEvent |
	
	nextEvent := self createEvent.
	nextEvent begin: nextEvent begin + 1.
	self assert: nextEvent > self event