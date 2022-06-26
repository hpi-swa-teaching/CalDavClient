navigating
showNextPage

	| dayIncrease |
	
	self currentView = #agenda
		ifTrue: [dayIncrease := self agendaDaysPerPage]
		ifFalse: [dayIncrease := self weekDaysPerPage].
	self startDate: (self startDate addDays: dayIncrease).
	self reload