testing
testShowPreviousPageWeek

	| startDate |
	self subject currentView: #week.
	startDate := self subject startDate.	
	self subject showPreviousPage.
	self assert: self subject startDate equals: (startDate subtractDays: self subject weekDaysPerPage)
		