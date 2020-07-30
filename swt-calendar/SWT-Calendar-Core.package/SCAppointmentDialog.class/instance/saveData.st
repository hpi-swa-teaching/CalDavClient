as yet unclassified
saveData

	| client |
	
	client := SCSabreButton sabreClient.
	SCFetchFromSabreButton testConnection.
	self createNewEvent.
	client pushEvent: mock.
	client forcePushEvent: mock.
	self accept: self.
	self addEventToLocalDayList.
	
	