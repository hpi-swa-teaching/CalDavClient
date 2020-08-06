creation
saveData

	| client eventCreated |
	
	client := SCConnectToSabreButton sabreClient.
	SCFetchFromSabreButton testConnection.
	eventCreated := self createNewEvent.
	eventCreated = false ifTrue:[^nil].
	client pushEvent: mock.
	client forcePushEvent: mock.
	self accept: self.
	calendar handleNewAppointment: mock.
	
	