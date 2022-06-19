testing
testDayIsSetCorrectly

	self quickView date: self firstOfMarch2018.
	self 
		assert: self quickView date = self firstOfMarch2018
		description: 'date should be the first of march now'