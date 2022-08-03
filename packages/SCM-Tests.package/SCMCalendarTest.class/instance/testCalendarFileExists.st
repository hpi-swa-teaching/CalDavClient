testing
testCalendarFileExists

	self assert: self calendar calendarFileExists.
	self calendar delete.
	self assert: self calendar calendarFileExists not