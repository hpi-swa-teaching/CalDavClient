loading
loadWeekView

	self addMorph: ((self viewTypes at: #week)
	createWithEvents: self retrieveWeekEvents
		andStartDate: self monday)
