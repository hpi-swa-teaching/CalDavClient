as yet unclassified
testAgendaViewDisplaysTomorrowEvent

	self subject currentView: #agenda.
	self assert: (self agendaViewDays anySatisfy: [:day | day date = self demoDateTomorrow and: [day eventBox submorphs anySatisfy: [:eventMorph | eventMorph event = self demoTomorrowEvent]]])