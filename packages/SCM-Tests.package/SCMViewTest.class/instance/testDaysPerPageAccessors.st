testing
testDaysPerPageAccessors


	self subject currentView: #agenda.
	self assert: self subject daysPerPage equals: SCMAgendaView daysPerPage.
	
	self subject currentView: #week.
	self assert: self subject daysPerPage equals: SCMWeekView daysPerPage