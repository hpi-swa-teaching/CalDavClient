testing
testLastDatePlusOne

	self assert: (self dayCheck: (Date today + (dayList numberOfDaysInDayList) days)) ~~ true.