testing
testNextMonthIsOneMonthAfter
	
	self monthView firstOfMonth: self firstOfMarch2018.
	self monthView nextMonth.
	self assert: (self monthView monthText = 'April 2018')