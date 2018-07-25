testing
testDayIsSetCorrectly

	weekPanel day: self firstOfMarch2018.
	self assert: weekPanel day = self firstOfMarch2018 description: 'day should be the first of march now' 