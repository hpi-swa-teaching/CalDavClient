accessing
selectedDate: aDate

	self triggerEvent: #dateChanged with: aDate start.
	Transcript show: 'selectedDate'.
	self owner abandon