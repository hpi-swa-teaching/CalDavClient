testing
testClearEvents

	self calendar addEvent: self createDummyEvent.
	self assert: self calendar isEmpty not.
	self calendar clearEvents.
	self assert: self calendar isEmpty
	