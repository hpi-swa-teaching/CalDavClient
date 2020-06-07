testing
testMultipleCalendarSelection
	
	self assert: self app calendarsToShow size <= self app calendars size description: 'can''t show more calendars than present'.
	self app showEventsForCalendar: (self app indexOfCalendarNamed: 'testCalendar') put: true.
	self assert: (self app isShowingEventsFor: (self app indexOfCalendarNamed: 'testCalendar')) description: 'test calendar should be selected'.
	self app showEventsForCalendar: (self app indexOfCalendarNamed: 'testCalendar') put: false.
	self assert: (self app isShowingEventsFor: (self app indexOfCalendarNamed: 'testCalendar')) not description: 'test calendars shouldn''t be selected'.