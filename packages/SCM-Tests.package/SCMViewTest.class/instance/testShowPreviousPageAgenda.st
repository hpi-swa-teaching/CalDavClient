testing
testShowPreviousPageAgenda

	| startDate |
	self subject currentView: #agenda.
	startDate := self subject selectedDate.	
	self subject showPreviousPage.
	self assert: self subject selectedDate equals: (startDate subtractDays: self subject agendaDaysPerPage)
		