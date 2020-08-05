accessing
delete: anDialog
	
	| client |
	
	client := SCConnectToSabreButton sabreClient.
	SCFetchFromSabreButton testConnection.
	
	client deleteEvent: calDavEvent.
	calendar handleDeleteAppointment: calDavEvent.
	anDialog abandon.
	
	