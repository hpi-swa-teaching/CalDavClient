testing
testDaysOfMonthBuilding

	self assert: self monthView days size equals: 42. "6 rows of 7 days"
	self assert: (self monthView days select: [:each | (each hasDate) 
		and: [each date asDate weekday = monthView firstOfMonth weekday
				and: [each date asDate monthIndex = monthView firstOfMonth monthIndex]
				and: [each date asDate year = monthView firstOfMonth year]]]) isEmpty not
	
	