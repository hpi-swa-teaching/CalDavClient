testing
testEndDate

	| aDateAndTime |
	
	aDateAndTime := DateAndTime year: 2001 month: 6 day: 15.
	self eventDialog end: aDateAndTime.
	self assert: self eventDialog end = aDateAndTime