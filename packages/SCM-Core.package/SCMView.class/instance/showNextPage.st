actions
showNextPage

	| dayIncrease |
	
	self currentView = #agenda
		ifTrue: [dayIncrease := 1]
		ifFalse: [dayIncrease := 7].
	self startDate: (self startDate addDays: dayIncrease).
	self reload