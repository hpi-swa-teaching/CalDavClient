testing
testLessThan

	| previousEvent |
	
	previousEvent := self createEvent.
	previousEvent begin: previousEvent begin - 1.
	self assert: previousEvent < self event