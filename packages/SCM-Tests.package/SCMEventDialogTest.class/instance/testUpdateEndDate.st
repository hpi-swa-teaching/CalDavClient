testing
testUpdateEndDate

	| aDate anotherDate |
	aDate := (Date year: 2001 month: 6 day: 15).
	anotherDate := (Date year: 2022 month: 7 day: 14).
	self eventDialog updateEndDate: aDate.
	self assert: (self eventDialog endDate = aDate).
	self eventDialog updateEndDate: anotherDate.
	self assert: (self eventDialog endDate = anotherDate)