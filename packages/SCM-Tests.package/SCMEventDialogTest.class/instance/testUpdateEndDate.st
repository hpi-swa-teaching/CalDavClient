testing
testUpdateEndDate

	| aDateAndTime anotherDateAndTime |
	aDateAndTime := (DateAndTime year: 2001 month: 6 day: 15).
	anotherDateAndTime := (DateAndTime year: 2022 month: 7 day: 14).
	self eventDialog endDateAndTime: aDateAndTime.
	self assert: (self eventDialog endDateAndTime = aDateAndTime).
	self eventDialog updateEndDateAndTime: anotherDateAndTime.
	self assert: (self eventDialog endDateAndTime = anotherDateAndTime)