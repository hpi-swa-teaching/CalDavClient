testing
testShowNextPageAgenda

	| startDate |
	
	self subject currentView: #agenda.
	startDate := self subject selectedDate.
	self subject showNextPage.
	self assert: self subject selectedDate equals: (startDate + SCMAgendaView defaultSkip)
		