as yet unclassified
testTextFieldsAreUpdated

	eventDialog event: self demoEvent.
	eventDialog eventBeginMinute: 30.
	self assert: eventDialog eventBeginMinute equals: (30 asString)