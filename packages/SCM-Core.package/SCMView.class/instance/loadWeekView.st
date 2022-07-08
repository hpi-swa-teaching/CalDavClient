loading
loadWeekView

	self addMorph: (self weekView
	createWithEvents: self retrieveWeekEvents
		andStartDate: self monday)