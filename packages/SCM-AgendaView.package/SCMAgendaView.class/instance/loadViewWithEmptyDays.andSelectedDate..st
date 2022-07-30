initialization
loadViewWithEmptyDays: aSortedCollection andSelectedDate: aDate

	| currentViewDay currentDate |
	
	currentDate := aDate.
	self daysPerView timesRepeat: [
		currentViewDay := SCMAgendaViewDay createWithDate: currentDate.
		self addMorphBack: currentViewDay.
		self agendaViewDays at: currentDate put: currentViewDay.
		aSortedCollection do: [:each |
			each begin asDate = currentDate
				ifTrue: [currentViewDay addEvent: each]].
		currentDate := currentDate next]