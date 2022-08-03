testing
testIsEmpty

	self assert: self calendar isEmpty.
	self calendar addEvent: self createDummyEvent.
	self assert: self calendar isEmpty not