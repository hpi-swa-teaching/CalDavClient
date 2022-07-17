testing
testGreaterThanOrEqual

	| equivalentEvent nextEvent |
	
	equivalentEvent := self createEvent.
	nextEvent := self createEvent.
	nextEvent begin: nextEvent begin + 1.
	
	self assert: equivalentEvent >= self event.
	self assert: nextEvent >= self event