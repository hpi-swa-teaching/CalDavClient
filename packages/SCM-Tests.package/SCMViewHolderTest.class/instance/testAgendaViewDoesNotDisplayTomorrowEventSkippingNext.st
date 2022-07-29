as yet unclassified
testAgendaViewDoesNotDisplayTomorrowEventSkippingNext

	self subject currentView: #agenda.
	self subject 
		showNextPage;
		showNextPage.
	self assert: (self agendaViewDays noneSatisfy: [:day | day date = self demoDateTomorrow and: [day eventBox submorphs anySatisfy: [:eventMorph | eventMorph event = self demoTomorrowEvent]]])