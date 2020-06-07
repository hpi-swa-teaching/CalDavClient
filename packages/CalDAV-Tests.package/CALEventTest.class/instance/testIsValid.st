testing
testIsValid

	| brokenEvent |
	
	self assert: self demoEvent isValid.
	
	brokenEvent := self demoEvent.
	brokenEvent 
		beginMonth: 6;
		beginDay: 40;
		endMonth: 7;
		endDay: 1.
	
	self assert: brokenEvent isValid not.
	self should: [brokenEvent begin] raise: Error.
	
	brokenEvent := self demoEvent.
	brokenEvent
		beginMonth: 2;
		beginDay: 1;
		endMonth: 2;
		endDay: 30.
	
	self assert: brokenEvent isValid not.
	self should: [brokenEvent end] raise: Error