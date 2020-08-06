testing
testTomorrowsDate

	self assert: (self dayCheck: (Date today + 1 days)) = true.