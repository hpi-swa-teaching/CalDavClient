as yet unclassified
testPreviousMonthIsOneMonthBefore
	
	monthView firstOfMonth: self march2018.
	monthView previousMonth.
	self assert: (monthView monthText = 'February 2018')