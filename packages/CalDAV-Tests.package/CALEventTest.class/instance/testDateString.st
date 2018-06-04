testing
testDateString
	| event |
	event := self demoEvent.
	self assert: ((CALEvent dateString: (event begin)) = '24.12.2018')