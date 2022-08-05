testing
testSameHash

	| anotherEvent |
	
	anotherEvent := self createEvent.
	self assert: self event hash equals: anotherEvent hash.

	anotherEvent title: 'somethingElse'.
	self assert: self event hash ~= anotherEvent hash