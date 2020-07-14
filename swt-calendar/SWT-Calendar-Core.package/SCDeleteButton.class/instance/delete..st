accessing
delete: anDialog
	
	|client cal|
	client := SCGoogleButton GoogleClient.
	cal := SCCalDavCalendar nDCal.
	
	SCFetchFromGoogleButton testConnection.
	
	client deleteEvent: icEvent.
	client forceDeleteEvent: icEvent.
	listItem abandon.
	"NDFetchFromGoogleButton checkIfEmptyDay: listItem."
	anDialog abandon.
	
	