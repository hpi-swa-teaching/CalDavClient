testing
testAgendaViewDisplaysTomorrowEvent

	self subject currentView: #agenda.
	self assert: (self agendaViewDays 
		anySatisfy: [:day | day date = self demoDateTomorrow 
			and: [day eventBox eventMorphs 
				anySatisfy: [:eventMorph | eventMorph event = self demoTomorrowEvent]]])