actions
loadWeekView

	self addMorph: ((self viewTypes at: #week)
		createWithEvents: (self calendarRepository activeEventsInWeek))
	
		