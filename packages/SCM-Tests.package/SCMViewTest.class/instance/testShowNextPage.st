testing
testShowNextPage

	| startDate dayIncrease |
	
	startDate := self subject startDate.
	
	self subject currentView = #agenda
		ifTrue: [dayIncrease := self defaultAgendaDaysPerPage]
		ifFalse: [dayIncrease := self defaultWeekDaysPerPage].
	
	self subject showNextPage.
	self assert: self subject startDate equals: (startDate addDays: dayIncrease)
		