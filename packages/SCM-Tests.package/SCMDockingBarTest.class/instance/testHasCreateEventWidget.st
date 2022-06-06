testing
testHasCreateEventWidget
	
     self assert: (self subject widgets includesKey: #createEvent).
	self assert: (self subject widgets at: #createEvent) isButton.