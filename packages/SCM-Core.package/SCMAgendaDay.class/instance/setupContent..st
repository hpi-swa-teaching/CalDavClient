initialization
setupContent: aDate

	self addMorph: SCMAgendaDayEventBox new;
		addMorph: (SCMAgendaDayTitle createWithDate: aDate)