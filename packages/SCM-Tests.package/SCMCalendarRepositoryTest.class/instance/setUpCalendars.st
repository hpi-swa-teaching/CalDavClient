as yet unclassified
setUpCalendars

	self demoCalendar: SCMCalendar new.
	self demoCalendar title: 'demoCalendar'.
	self demoCalendar2: SCMCalendar new.
	self demoCalendar2 title: 'demoCalendar2'.
	self demoCalendar3: SCMCalendar new.
	self demoCalendar3 title: 'demoCalendar3'.
	
	self subject addCalendars: {self demoCalendar. self demoCalendar2. self demoCalendar3}.