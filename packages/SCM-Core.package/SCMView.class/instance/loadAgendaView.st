loading
loadAgendaView

	self addMorph: (self agendaView
		createWithEvents: self retrieveAgendaEvents
		andStartDate: self startDate)
