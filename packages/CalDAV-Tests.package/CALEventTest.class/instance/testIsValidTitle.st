testing
testIsValidTitle

	|eventWithNoTitle|
	eventWithNoTitle := self createEvent.
	eventWithNoTitle title: ''.
	self assert: (eventWithNoTitle isValid = CALEvent noTitleError)
	


	