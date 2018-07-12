updating
refresh

	| localCopy |
	
	localCopy := CalDavCalendarCALVersion new
		url: self caldavLink.
	localCopy client
		username: self username;
		password: self password.
	localCopy
		updateCalendar;
		updateEvents;
		yourself.
	localCopy client
		username: nil;
		password: nil.
	self localCalendarCopy: localCopy.
	self name: self localCalendarCopy calendarName.
	self events removeAll addAll: (self localCalendarCopy events collect: [ :each | CALEvent newFromICEvent: each serverData ])
		