testing
testShowPreviousPage

	| startDate dayDecrease |
	
	startDate := self subject startDate.
	
	self subject currentView = #agenda
		ifTrue: [dayDecrease := self defaultAgendaDaysPerPage]
		ifFalse: [dayDecrease := self defaultWeekDaysPerPage].
	
	self subject showPreviousPage.
	self assert: self subject startDate equals: (startDate subtractDays: dayDecrease)
		