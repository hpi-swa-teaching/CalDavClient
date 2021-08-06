testing
testFillMonthIsCorrect
	
	self monthView firstOfMonth: self firstOfMarch2018.
	self monthView fillMonth.
	self 
		assert: (self monthView days at: 4) dateText 
		equals: '1'.
	self 
		assert: (self monthView days at: 37) dateText 
		equals: ''