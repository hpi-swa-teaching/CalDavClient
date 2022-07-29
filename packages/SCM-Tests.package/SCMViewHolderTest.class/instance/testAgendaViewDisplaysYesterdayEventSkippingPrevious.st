as yet unclassified
testAgendaViewDisplaysYesterdayEventSkippingPrevious

	self subject currentView: #agenda.
	self subject showPreviousPage.
	self assert: (self agendaViewDays anySatisfy: [:day | day date = self demoDateYesterday and: [day eventBox submorphs anySatisfy: [:eventMorph | eventMorph event = self demoYesterdayEvent]]])