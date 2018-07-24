testing
testNextMonthIsOneMonthAfter
	
	monthView firstOfMonth: self firstOfMarch2018.
	monthView nextMonth.
	self assert: (monthView monthText = 'April 2018')