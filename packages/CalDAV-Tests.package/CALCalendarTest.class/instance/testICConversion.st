testing
testICConversion

	| remoteCalendar appCalendar event |
	
	remoteCalendar := ICCalendar new
		name: 'testCalendarICConversion'.
	remoteCalendar addEvent: (ICEvent new
		summary: 'Meeting1';
		start: (DateAndTime year: 2018 month: 6 day: 6 hour: 10 minute: 0);
		end: (DateAndTime year: 2018 month: 6 day: 6 hour: 11 minute: 0);
		location: 'Conferende Room';
		addAttendee: 'peter@silie.com';
		textualDescription: 'plan world domination';
		yourself).
	appCalendar := CALCalendar newFromICCalendar: remoteCalendar.
	event := CALEvent new
		title: 'Meeting1';
		begin: (DateAndTime year: 2018 month: 6 day: 6 hour: 10 minute: 0);
		end: (DateAndTime year: 2018 month: 6 day: 6 hour: 11 minute: 0);
		location: 'Conferende Room';
		participants: (Set new add: 'peter@silie.com');
		description: 'plan world domination';
		yourself.
	self assert: (appCalendar includes: event).
	appCalendar calendarDirectory deleteFileNamed: remoteCalendar name
	