as yet unclassified
testDayIsSetCorrectly

	weekView day: self firstOfMarch2018.
	self assert: weekView day = self firstOfMarch2018 description: 'day should be the first of march now' 