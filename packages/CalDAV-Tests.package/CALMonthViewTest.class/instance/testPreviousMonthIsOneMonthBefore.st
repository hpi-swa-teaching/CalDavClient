as yet unclassified
testPreviousMonthIsOneMonthBefore
	
	self setUp.
	monthView firstOfMonth: self march2018.
	monthView previousMonth.
	self assert: (monthView monthText = 'February 2018')