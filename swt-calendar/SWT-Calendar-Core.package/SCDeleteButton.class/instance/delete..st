accessing
delete: anDialog
	
	|client cal|
	client := SCSabreButton sabreClient.
	cal := SCCalDavCalendar nDCal.
	
	SCFetchFromSabreButton testConnection.
	
	client deleteEvent: icEvent.
	client forceDeleteEvent: icEvent.
	listItem abandon.
	"NDFetchFromGoogleButton checkIfEmptyDay: listItem."
	anDialog abandon.
	
	