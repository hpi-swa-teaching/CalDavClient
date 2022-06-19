testing
testFirstMonthIsCurrentMonth
	
	self assert: (self monthView monthText = Date today month asString)