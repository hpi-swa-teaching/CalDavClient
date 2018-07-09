as yet unclassified
testCalendarsAreSortedAlphabetically

	app addCalendar: (CALCalendar withName: 'xtestCalendar').
	self assert: app calendars size >= 2 description: 'For this test at least to calendars are needed'.
	self assert: (app calendars at: 1) name <= (app calendars at: 2) name description: 'name of first calendar should come first in alphabetical order'.
	self assert: app calendars first name <= app calendars last name description: 'name of first calendar should come first in alphabetical order'.
	app deleteCalendarNamed: 'xtestCalendar'