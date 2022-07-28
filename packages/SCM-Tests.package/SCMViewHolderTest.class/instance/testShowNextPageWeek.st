testing
testShowNextPageWeek

	| startDate |
	
	self subject currentView: #week.
	startDate := self subject selectedDate.	
	self subject showNextPage.
	self assert: self subject selectedDate equals: (startDate + SCMWeekView defaultSkip)
		