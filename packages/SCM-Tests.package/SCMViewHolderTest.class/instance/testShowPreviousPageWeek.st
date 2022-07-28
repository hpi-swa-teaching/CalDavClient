testing
testShowPreviousPageWeek

	| startDate |
	
	self subject currentView: #week.
	startDate := self subject selectedDate.	
	self subject showPreviousPage.
	self assert: self subject selectedDate equals: (startDate - SCMWeekView defaultSkip)
		