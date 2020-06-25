accessing
delete
	
	|client cal anEvent refresh|
	client := NDGoogleButton GoogleClient.
	cal := NDCalDavCalendar nDCal.
	anEvent := CalDavEvent new.
	anEvent := cal eventsDictionary at: ('/caldav/v2/peterpbraun@gmail.com/events/', icEvent uid, '.ics' ).
	client deleteEvent: anEvent.
	client forceDeleteEvent: anEvent.
	
	"refresh := NDFetchFromGoogleButton new.
	refresh refreshFetch."
	
	