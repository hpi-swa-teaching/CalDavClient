initialization
setupContent: aDate

	self addMorph: SCMAgendaDayEventBox new.
	self addMorph: (SCMAgendaDayTitle createWithDate: aDate).