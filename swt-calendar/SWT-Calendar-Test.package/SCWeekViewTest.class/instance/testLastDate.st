as yet unclassified
testLastDate

	self assert: (self dayCheck: (Date today + (dayList numberOfDaysInDayList - 1) days)) = true.