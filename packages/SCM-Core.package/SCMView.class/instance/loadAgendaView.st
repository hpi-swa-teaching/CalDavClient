loading
loadAgendaView

	self addMorph: ((self viewTypes at: #agenda)
		createWithEvents: self retrieveAgendaEvents
		andStartDate: self startDate)
