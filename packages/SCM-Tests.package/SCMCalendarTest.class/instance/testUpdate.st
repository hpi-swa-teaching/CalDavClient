accessing
testUpdate

	self assert: self demoCalendar calendarFileExists.
	self demoCalendar delete.
	self assert: self demoCalendar calendarFileExists not.
	self demoCalendar update: #eventChanged.
	self assert: self demoCalendar calendarFileExists