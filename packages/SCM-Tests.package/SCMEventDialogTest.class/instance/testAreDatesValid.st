testing
testAreDatesValid

	| aDateAndTime anotherDateAndTime |
	
	aDateAndTime := (DateAndTime year: 2001 month: 6 day: 15 hour: 2 minute: 2).
	anotherDateAndTime := (DateAndTime year: 2022 month: 7 day: 14 hour: 2 minute: 2).
	self eventDialog end: aDateAndTime.
	self eventDialog begin: anotherDateAndTime.
	self assert: self eventDialog areDatesAndTimesValid not.
	self eventDialog end: anotherDateAndTime.
	self eventDialog begin: aDateAndTime.
	self assert: self eventDialog areDatesAndTimesValid