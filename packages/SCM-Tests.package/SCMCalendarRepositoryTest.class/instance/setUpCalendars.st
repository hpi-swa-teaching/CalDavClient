as yet unclassified
setUpCalendars

	self demoCalendar: (SCMCalendar newWithName: 'demoCalendar').
	self demoCalendar2: (SCMCalendar newWithName: 'demoCalendar2').
	self demoCalendar3: (SCMCalendar newWithName: 'demoCalendar3').
	
	self subject addCalendars: {self demoCalendar. self demoCalendar2. self demoCalendar3}.