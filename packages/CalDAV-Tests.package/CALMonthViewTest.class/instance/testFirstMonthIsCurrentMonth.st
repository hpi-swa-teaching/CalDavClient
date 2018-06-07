as yet unclassified
testFirstMonthIsCurrentMonth
	
	self setUp.
	self assert: (monthView monthText = Date today month asString)