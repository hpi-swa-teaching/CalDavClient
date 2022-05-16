testing
testFullDay

	self assert: (self demoEventFullDay isFullDay = true).
	self assert: (self demoEvent isFullDay = false)
	