as yet unclassified
setUp

	| first second |
	testApp := CALApp new.
	testApp selectedCalendar: CALCalendar new.
	testApp selectedCalendar name: 'testCalendar'.
	testApp selectedCalendar clearEvents.
	first := CALEvent new.
	first begin: (DateAndTime year: 2017 month: 12 day: 24 hour: 17 minute: 30).
	second := CALEvent new.
	second begin: (DateAndTime year: 2018 month: 12 day: 24 hour: 17 minute: 30).
	first title: 'first'.
	second title: 'second'.
	testApp selectedCalendar 
		addEvent: first;
		addEvent: second