as yet unclassified
setUp
	
	cal := CALWebCalendar new.
	cal 
		name: 'testCalendar';
		caldavLink: 'test';
		storeLink;
		caldavLink: '';
		restoreLink.
	
	cal calendarDirectory deleteFileNamed: 'testCalendar'.
	self assert: cal caldavLink = 'test'
	