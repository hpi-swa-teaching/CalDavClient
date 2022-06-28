testing
testShowNextPage

	| startDate |
	
	startDate := self subject startDate.

	self subject showNextPage.
	self assert: self subject startDate equals: (startDate addDays: self subject daysPerPage)
		