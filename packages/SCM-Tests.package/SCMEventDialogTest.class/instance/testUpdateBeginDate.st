testing
testUpdateBeginDate

	| aDate anotherDate |
	
	aDate := Date year: 2001 month: 6 day: 15.
	anotherDate := Date year: 2022 month: 7 day: 14.
	self eventDialog beginDate: aDate.
	self assert: (self eventDialog beginDate = aDate).
	self eventDialog updateBeginDate: anotherDate.
	self assert: (self eventDialog beginDate = anotherDate)
	"begin month is actually month and year (not digit)"