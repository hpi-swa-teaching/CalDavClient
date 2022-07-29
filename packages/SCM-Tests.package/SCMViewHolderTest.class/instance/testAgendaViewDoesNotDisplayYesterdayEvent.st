as yet unclassified
testAgendaViewDoesNotDisplayYesterdayEvent

	self subject currentView: #agenda.
	self assert: (self agendaViewDays noneSatisfy: [:day | day date = self demoDateYesterday and: [day eventBox submorphs anySatisfy: [:eventMorph | eventMorph event = self demoYesterdayEvent]]])