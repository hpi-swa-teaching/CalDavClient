accessing
delete: anDialog
	
	|client|
	client := SCSabreButton sabreClient.
	
	SCFetchFromSabreButton testConnection.
	
	client deleteEvent: icEvent.
	calendar handleDeleteAppointment: icEvent.
	anDialog abandon.
	
	