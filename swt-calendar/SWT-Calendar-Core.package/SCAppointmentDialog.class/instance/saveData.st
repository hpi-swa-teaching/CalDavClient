creation
saveData

	| client |
	
	client := SCConnectToSabreButton sabreClient.
	SCFetchFromSabreButton testConnection.
	self createNewEvent.
	client pushEvent: mock.
	client forcePushEvent: mock.
	self accept: self.
	calendar handleNewAppointment: mock.
	
	