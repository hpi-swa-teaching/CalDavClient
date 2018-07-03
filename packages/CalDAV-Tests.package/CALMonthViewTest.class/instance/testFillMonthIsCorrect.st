as yet unclassified
testFillMonthIsCorrect
	
	monthView firstOfMonth: self firstOfMarch2018.
	monthView fillMonth.
	self assert: (monthView days at: 4) dateText equals: '1'.
	self assert: (monthView days at: 37) dateText equals: ''