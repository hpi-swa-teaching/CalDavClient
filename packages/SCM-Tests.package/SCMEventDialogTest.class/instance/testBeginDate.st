testing
testBeginDate

	| aDateAndTime |
	aDateAndTime := (DateAndTime year: 2001 month: 6 day: 15).
	self eventDialog begin: aDateAndTime.
	self assert: (self eventDialog begin = aDateAndTime)