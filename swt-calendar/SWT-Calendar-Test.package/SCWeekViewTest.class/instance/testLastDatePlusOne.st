as yet unclassified
testLastDatePlusOne

	self assert: (self dayCheck: (Date today + (dayList numberOfDaysInDayList) days)) ~~ true.