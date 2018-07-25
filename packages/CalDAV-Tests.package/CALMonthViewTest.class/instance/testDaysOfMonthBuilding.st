testing
testDaysOfMonthBuilding

	self assert: self monthView days size equals: 42. "6 rows of 7 days"
	self assert: (self monthView days select: [ :each | (each hasDate) and: [each date asDate  = self monthView firstOfMonth]]) isEmpty not