testing
testBeginDate

	|aDate|
	aDate := (DateAndTime year: 2001 month: 6 day: 15).
	self eventDialog beginDate: aDate.
	self assert: (self eventDialog beginDate = aDate)