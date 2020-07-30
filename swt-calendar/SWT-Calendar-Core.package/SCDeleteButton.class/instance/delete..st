accessing
delete: anDialog
	
	|client cal|
	client := SCSabreButton sabreClient.
	cal := SCCalDavCalendar nDCal.
	
	SCFetchFromSabreButton testConnection.
	
	[client deleteEvent: icEvent.
	client forceDeleteEvent: icEvent.] on: Warning do:[
	listItem abandon.
	"NDFetchFromGoogleButton checkIfEmptyDay: listItem."
	anDialog abandon.]
	
	