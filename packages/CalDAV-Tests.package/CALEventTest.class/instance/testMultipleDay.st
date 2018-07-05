testing
testMultipleDay

	self assert: (self demoEventMultipleDay isMultipleDay = true).
	self assert: (self demoEventMultipleDay isFullDayFor: (Date year: 2018 month: 12 day: 22)) = true.
	self assert: (self demoEventMultipleDay isFullDayFor: (Date year: 2018 month: 12 day: 23)) = true.
	self assert: (self demoEventMultipleDay isFullDayFor: (Date year: 2018 month: 12 day: 24)) = false.
	self assert: (self demoEventMultipleDay beginsIn: (Date year: 2018 month: 12 day: 22)) = true.
	self assert: (self demoEventMultipleDay beginsIn: (Date year: 2018 month: 12 day: 24)) = false.
	self assert: (self demoEventMultipleDay endsIn: (Date year: 2018 month: 12 day: 22)) = false.
	self assert: (self demoEventMultipleDay endsIn: (Date year: 2018 month: 12 day: 24)) = true.
	