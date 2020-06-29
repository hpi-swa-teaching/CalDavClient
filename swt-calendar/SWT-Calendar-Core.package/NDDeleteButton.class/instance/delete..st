accessing
delete: anDialog
	
	|client cal|
	client := NDGoogleButton GoogleClient.
	cal := NDCalDavCalendar nDCal.
	
	NDFetchFromGoogleButton testConnection.
	
	client deleteEvent: icEvent.
	client forceDeleteEvent: icEvent.
	listItem abandon.
	"NDFetchFromGoogleButton checkIfEmptyDay: listItem."
	anDialog abandon.
	
	