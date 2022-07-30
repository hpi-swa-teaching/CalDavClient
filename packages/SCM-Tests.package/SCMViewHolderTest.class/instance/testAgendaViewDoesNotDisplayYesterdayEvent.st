testing
testAgendaViewDoesNotDisplayYesterdayEvent

	self subject currentView: #agenda.
	self assert: (self agendaViewDays 
		noneSatisfy: [:day | day date = self demoDateYesterday 
			and: [day eventBox eventMorphs 
				anySatisfy: [:eventMorph | eventMorph event = self demoYesterdayEvent]]])