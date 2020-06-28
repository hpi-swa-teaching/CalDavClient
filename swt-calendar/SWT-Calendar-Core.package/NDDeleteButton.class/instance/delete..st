accessing
delete: anDialog
	
	|client cal|
	client := NDGoogleButton GoogleClient.
	cal := NDCalDavCalendar nDCal.
	client deleteEvent: icEvent.
	client forceDeleteEvent: icEvent.
	listItem abandon.
	anDialog abandon.
	
	