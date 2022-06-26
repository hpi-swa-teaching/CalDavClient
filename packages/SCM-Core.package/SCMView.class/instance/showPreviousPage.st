actions
showPreviousPage

	| dayDecrease |
	
	self currentView = #agenda
		ifTrue: [dayDecrease := 1]
		ifFalse: [dayDecrease := 7].
		
	self startDate: (self startDate subtractDays: dayDecrease).
	self reload