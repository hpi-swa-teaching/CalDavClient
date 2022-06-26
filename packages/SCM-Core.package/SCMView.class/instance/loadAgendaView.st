actions
loadAgendaView

	self addMorph: ((self viewTypes at: #agenda)
		createWithEvents: (self calendarManager activeEventsAfter: self startDate maxEvents: self defaultMaxEvents)
		andStartDate: self startDate)