initialization
setupContent: aDate

	self addMorph: (self getDateText: aDate).
	self eventBox: SCMAgendaDayEventBox new.
	self date: aDate.
	self addMorphBack: self eventBox