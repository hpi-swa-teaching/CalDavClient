loading
loadWeekView

	self addMorph: ((self viewTypes at: #week)
<<<<<<< HEAD
	createWithEvents: self retrieveWeekEvents
		andStartDate: self monday)
=======
		createWithEvents: (self calendarRepository activeEventsInWeek))
	
		
>>>>>>> calendarRework
