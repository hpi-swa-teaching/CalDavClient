testing
testDaysPerPageAccessors

	self assert: self subject weekDaysPerPage equals: self defaultWeekDaysPerPage.
	self assert: self subject agendaDaysPerPage equals: self defaultAgendaDaysPerPage