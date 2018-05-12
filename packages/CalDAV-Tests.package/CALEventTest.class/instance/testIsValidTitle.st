testing
testIsValidTitle

	|eventWithNoTitle|
	eventWithNoTitle := self createEvent.
	eventWithNoTitle title: nil.
	self assert: (eventWithNoTitle isValid = CALEvent noTitleError)
	


	