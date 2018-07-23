updating
refresh

	self localCalendarCopy: (CalDavCalendarCALVersion new
		url: self caldavLink;
		username: self username;
		password: self password;
		update;
		yourself).
	self name: self localCalendarCopy calendarName.
	self events 
		removeAll; 
		addAll: (self localCalendarCopy events collect: [ :each | CALEvent newFromICEvent: each serverData ])
		