testing
testTimeString
	| event |
	event := self demoEvent.
	self assert: ((CALEvent timeString: event begin)= '17:09')