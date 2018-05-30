testing
testIsValidTitle

	| eventWithNoTitle |
	
	eventWithNoTitle := self demoEvent.
	eventWithNoTitle title: nil.
	self assert: eventWithNoTitle isTitleValid not
	


	