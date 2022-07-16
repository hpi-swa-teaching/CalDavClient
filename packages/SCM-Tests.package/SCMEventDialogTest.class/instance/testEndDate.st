testing
testEndDate

	|aDate|
	aDate := (DateAndTime year: 2001 month: 6 day: 15).
	self eventDialog endDate: aDate.
	self assert: (self eventDialog endDate = aDate)