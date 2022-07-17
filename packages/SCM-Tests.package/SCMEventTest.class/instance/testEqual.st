testing
testEqual

	| equivalentEvent |
	
	equivalentEvent := self createEvent.
	self assert: self event = equivalentEvent