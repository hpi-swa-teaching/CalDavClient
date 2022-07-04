as yet unclassified
setUpCalendars

	self demoCalendar: (SCMCalendar newNamed: 'demoCalendar').
	self demoCalendar2: (SCMCalendar newNamed: 'demoCalendar2').
	self demoCalendar3: (SCMCalendar newNamed: 'demoCalendar3').
	
	self subject addCalendars: {self demoCalendar. self demoCalendar2. self demoCalendar3}.