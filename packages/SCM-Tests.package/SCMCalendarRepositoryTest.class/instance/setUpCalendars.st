as yet unclassified
setUpCalendars

	self demoCalendar: (SCMCalendar newNamed: 'demoCalendar' withDefaultColor: Color turquoise).
	self demoCalendar2: (SCMCalendar newNamed: 'demoCalendar2' withDefaultColor: Color turquoise).
	self demoCalendar3: (SCMCalendar newNamed: 'demoCalendar3' withDefaultColor: Color turquoise).
	
	self subject addCalendars: {self demoCalendar. self demoCalendar2. self demoCalendar3}.