initialization
loadViewWithEmptyDays: aSortedCollection andSelectedDate: aDate

	| currentDay currentDate |
	
	currentDate := aDate.
	self daysPerView timesRepeat: [
		currentDay := SCMAgendaViewDay createWithDate: currentDate.
		self addMorphBack: currentDay.
		aSortedCollection do: [:each |
			each begin asDate = currentDate
				ifTrue: [currentDay addEvent: each]].
		currentDate := currentDate next]