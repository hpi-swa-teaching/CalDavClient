testing
testPreviousMonthIsOneMonthBefore
	
	self monthView firstOfMonth: self firstOfMarch2018.
	self monthView previousMonth.
	self assert: (self monthView monthText = 'February 2018')