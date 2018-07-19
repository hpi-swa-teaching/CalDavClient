as yet unclassified
testCalendarsAreSortedAlphabetically

	self app 
		addCalendar: (CALCalendar withName: 'xtestCalendar');
		addCalendar: (CALCalendar withName: 'atestCalendar').
		
	self assert: self app calendars size >= 2 description: 'For this test at least two calendars are needed'.
	1 to: app calendars size do: [ :each | self assert: (app calendars at: 1) name <= (app calendars at: each) name description: 'name of first calendar should come first in alphabetical order'].
	
	self app 
		deleteCalendarNamed: 'xtestCalendar';
		deleteCalendarNamed: 'atestCalendar'