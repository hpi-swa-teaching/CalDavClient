as yet unclassified
testEndAccessors

	self demoEvent
		endYear: 2014;
		endMonth: 2;
		endDay: 14;
		endHour: 11;
		endMinute: 30.
		
	self assert: 2014 equals: self demoEvent endYear.
	self assert: 2 equals: self demoEvent endMonth.
	self assert: 14 equals: self demoEvent endDay.
	self assert: 11 equals: self demoEvent endHour.
	self assert: 30 equals: self demoEvent endMinute