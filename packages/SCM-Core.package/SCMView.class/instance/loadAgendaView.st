loading
loadAgendaView

	self addMorph: ((self viewTypes at: #agenda)
<<<<<<< HEAD
		createWithEvents: self retrieveAgendaEvents
		andStartDate: self startDate)
=======
		createWithEvents: (self calendarRepository
			activeEventsAfter: self startDate maxEvents: self defaultMaxEvents))
>>>>>>> calendarRework
