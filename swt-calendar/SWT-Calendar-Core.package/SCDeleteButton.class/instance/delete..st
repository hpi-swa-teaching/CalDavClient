accessing
delete: anDialog
	
	|client|
	client := SCConnectToSabreButton sabreClient.
	
	SCFetchFromSabreButton testConnection.
	
	client deleteEvent: icEvent.
	calendar handleDeleteAppointment: icEvent.
	anDialog abandon.
	
	