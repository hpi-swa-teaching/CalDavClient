initialization
setupContent: aDate

	self addMorph: (self getDateText: aDate).
	self eventBox: SCMAgendaViewDayEventBox new.
	self date: aDate.
	self addMorphBack: self eventBox