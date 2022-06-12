initialization
setupContent: aDate
	
	self addMorph: (SCMAgendaDayTitle createWithDate: aDate).
	self eventBox: SCMAgendaDayEventBox new.
	self day: aDate.
	self addMorphBack: self eventBox.