as yet unclassified
setUp

	| first second |
	app := CALApp new.
	app calendars add: (CALCalendar withName: 'testCalendar').
	app calendarIndex: app calendars size.
	first := CALEvent new.
	first begin: (DateAndTime year: 2017 month: 12 day: 24 hour: 17 minute: 30).
	second := CALEvent new.
	second begin: (DateAndTime year: 2018 month: 12 day: 24 hour: 17 minute: 30).
	first title: 'first'.
	second title: 'second'.
	app selectedCalendar 
		addEvent: first;
		addEvent: second