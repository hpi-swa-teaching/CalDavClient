loading
retrieveAgendaEvents
		
		^ self calendarRepository activeEventsAfter: self startDate maxEvents: self defaultMaxEvents andBefore: self startDate + (Duration days: SCMAgendaView defaultDaysPerView)