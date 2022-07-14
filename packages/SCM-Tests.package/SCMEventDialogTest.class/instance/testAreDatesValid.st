testing
testAreDatesValid

	|aDate anotherDate|
	aDate := (DateAndTime year: 2001 month: 6 day: 15).
	anotherDate := (DateAndTime year: 2022 month: 7 day: 14).
	self eventDialog endDate: aDate.
	self eventDialog beginDate: anotherDate.
	self assert: self eventDialog areDatesValid not.
	self eventDialog endDate: anotherDate.
	self eventDialog beginDate: aDate.
	self assert: self eventDialog areDatesValid