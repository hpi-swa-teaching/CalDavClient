creation
saveData

	| client |
	
	client := SCSabreButton sabreClient.
	SCFetchFromSabreButton testConnection.
	self createNewEvent.
	client pushEvent: mock.
	client forcePushEvent: mock.
	self accept: self.
	self addEventToLocalDayList.
	calendar handleNewAppointment: mock.
	
	