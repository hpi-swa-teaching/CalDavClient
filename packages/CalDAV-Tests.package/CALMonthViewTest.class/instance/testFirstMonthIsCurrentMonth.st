as yet unclassified
testFirstMonthIsCurrentMonth
	
	self assert: (monthView monthText = Date today month asString)