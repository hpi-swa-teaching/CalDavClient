testing
testHasCreateEventWidget

	self assert: (self subject widgets includesKey: #addEvent).
	self assert: (self subject widgets at: #addEvent) class = SCMButton