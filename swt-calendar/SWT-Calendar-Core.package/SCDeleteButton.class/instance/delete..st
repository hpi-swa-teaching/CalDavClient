accessing
delete: anDialog
	
	|client cal|
	client := SCSabreButton sabreClient.
	cal := SCCalDavCalendar nDCal.
	
	SCFetchFromSabreButton testConnection.
	
	client deleteEvent: icEvent.
	listItem abandon.
	anDialog abandon.
	
	