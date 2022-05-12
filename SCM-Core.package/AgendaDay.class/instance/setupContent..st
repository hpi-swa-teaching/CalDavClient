initialization
setupContent: aDate

	self addMorph: AgendaDayEventBox new.
	self addMorph: (AgendaDayTitle createWithDate: aDate).