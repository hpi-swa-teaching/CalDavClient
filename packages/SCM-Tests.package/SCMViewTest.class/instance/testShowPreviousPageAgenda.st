testing
testShowPreviousPageAgenda

	| startDate |
	self subject currentView: #agenda.
	startDate := self subject startDate.	
	self subject showPreviousPage.
	self assert: self subject startDate equals: (startDate subtractDays: self subject agendaDaysPerPage)
		