accessing
delete: anDialog
	
	|client cal|
	client := NDGoogleButton GoogleClient.
	cal := NDCalDavCalendar nDCal.
	"anEvent := CalDavEvent new.
	anEvent := cal eventsDictionary at: ('/caldav/v2/', GoogleCalDAVClient calendarID ,'/events/', icEvent uid, '.ics' )."
	client deleteEvent: icEvent.
	client forceDeleteEvent: icEvent.
	listItem abandon.
	anDialog abandon.
	
	