testing
testAgendaViewDoesNotDisplayTomorrowEventSkippingNextTwice

	self subject currentView: #agenda.
	2 timesRepeat: [self subject showNextPage].
	self assert: (self agendaViewDays 
		noneSatisfy: [:day | day date = self demoDateTomorrow 
			and: [day eventBox eventMorphs 
				anySatisfy: [:eventMorph | eventMorph event = self demoTomorrowEvent]]])