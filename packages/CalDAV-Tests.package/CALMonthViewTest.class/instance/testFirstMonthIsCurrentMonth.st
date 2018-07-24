testing
testFirstMonthIsCurrentMonth
	
	self assert: (monthView monthText = Date today month asString)