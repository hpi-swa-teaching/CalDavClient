testing
testLessThanOrEqual

	| equivalentEvent previousEvent |
	
	equivalentEvent := self createEvent.
	previousEvent := self createEvent.
	previousEvent begin: previousEvent begin - 1.
	
	self assert: equivalentEvent <= self event.
	self assert: previousEvent <= self event