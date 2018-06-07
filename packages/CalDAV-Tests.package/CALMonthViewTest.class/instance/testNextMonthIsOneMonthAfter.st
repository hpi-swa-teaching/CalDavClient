as yet unclassified
testNextMonthIsOneMonthAfter
	
	self setUp.
	monthView firstOfMonth: self march2018.
	monthView nextMonth.
	self assert: (monthView monthText = 'April 2018')