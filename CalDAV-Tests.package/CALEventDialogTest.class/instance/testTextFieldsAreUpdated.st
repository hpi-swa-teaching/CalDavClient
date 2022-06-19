testing
testTextFieldsAreUpdated

	self eventDialog event: self demoEvent.
	self eventDialog eventBeginMinute: 30.
	self assert: self eventDialog eventBeginMinute equals: (30 asString)