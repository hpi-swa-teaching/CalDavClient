updating
update

	| localCopy |
	
	localCopy := CalDavCalendarCALVersion new
		url: self caldavLink;
		updateCalendar;
		updateEvents;
		yourself.
	self localCalendarCopy: localCopy