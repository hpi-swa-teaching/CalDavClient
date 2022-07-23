testing
testAreDatesValid

	| aDateAndTime anotherDateAndTime |
	aDateAndTime := (DateAndTime year: 2001 month: 6 day: 15 hour: 2 minute: 2).
	anotherDateAndTime := (DateAndTime year: 2022 month: 7 day: 14 hour: 2 minute: 2).
	self eventDialog endDateAndTime: aDateAndTime.
	self eventDialog beginDateAndTime: anotherDateAndTime.
	self assert: self eventDialog areDatesAndTimesValid not.
	self eventDialog endDateAndTime: anotherDateAndTime.
	self eventDialog beginDateAndTime: aDateAndTime.
	self assert: self eventDialog areDatesAndTimesValid