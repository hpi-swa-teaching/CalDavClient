as yet unclassified
testNextMonthIsOneMonthAfter
	
	monthView firstOfMonth: self march2018.
	monthView nextMonth.
	self assert: (monthView monthText = 'April 2018')