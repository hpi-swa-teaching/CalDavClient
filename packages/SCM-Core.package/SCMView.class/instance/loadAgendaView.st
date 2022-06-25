actions
loadAgendaView

	self addMorph: ((self viewTypes at: #agenda)
		createWithEvents: (self calendarRepository
			activeEventsAfter: self startDate maxEvents: self defaultMaxEvents))