as yet unclassified
testBeginAccessors

	self demoEvent
		beginYear: 2014;
		beginMonth: 2;
		beginDay: 14;
		beginHour: 11;
		beginMinute: 30.
		
	self assert: 2014 equals: self demoEvent beginYear.
	self assert: 2 equals: self demoEvent beginMonth.
	self assert: 14 equals: self demoEvent beginDay.
	self assert: 11 equals: self demoEvent beginHour.
	self assert: 30 equals: self demoEvent beginMinute