initialization
loadViewWithEmptyDays: aSortedCollection

	| currentDay currentDate |
	
	currentDate := self startDate.
	self class daysPerPage timesRepeat: [
		currentDay := SCMAgendaViewDay createWithDate: currentDate.
		self addMorphBack: currentDay.
	
		aSortedCollection do: [:each |
			each begin asDate = currentDate
				ifTrue: [currentDay addEvent: each]].
	
		currentDate := currentDate next]