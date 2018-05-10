as yet unclassified
initialize 
	| first second |
	self selectedCalendar: CALCalendar new.
	first := CALEvent new.
	first begin: (DateAndTime year: 2017 month: 12 day: 24 hour: 17 minute: 30).
	second := CALEvent new.
	second begin: (DateAndTime year: 2018 month: 12 day: 24 hour: 17 minute: 30).
	first title: 'first'.
	second title: 'second'.
	self selectedCalendar 
		addEvent: first;
		addEvent: second.