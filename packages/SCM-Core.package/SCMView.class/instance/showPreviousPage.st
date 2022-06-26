navigating
showPreviousPage

	| dayDecrease |
	
	self currentView = #agenda
		ifTrue: [dayDecrease := self agendaDaysPerPage]
		ifFalse: [dayDecrease := self weekDaysPerPage].
	self startDate: (self startDate subtractDays: dayDecrease).
	self reload