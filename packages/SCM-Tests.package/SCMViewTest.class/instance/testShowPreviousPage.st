testing
testShowPreviousPage

	| startDate |
	
	startDate := self subject startDate.
	
	self subject showPreviousPage.
	self assert: self subject startDate equals: (startDate subtractDays: self subject daysPerPage)
		