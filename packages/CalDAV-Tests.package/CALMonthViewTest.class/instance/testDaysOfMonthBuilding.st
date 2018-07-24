testing
testDaysOfMonthBuilding

	self assert: monthView days size equals: 42. "6 rows of 7 days"
	self assert: (monthView days select: [ :each | (each hasDate) and: [each date asDate  = monthView firstOfMonth]]) isEmpty not