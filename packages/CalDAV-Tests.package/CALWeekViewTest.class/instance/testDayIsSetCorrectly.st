testing
testDayIsSetCorrectly

	self weekPanel day: self firstOfMarch2018.
	self 
		assert: self weekPanel firstDay = self firstOfMarch2018 
		description: 'day should be the first of march now' 