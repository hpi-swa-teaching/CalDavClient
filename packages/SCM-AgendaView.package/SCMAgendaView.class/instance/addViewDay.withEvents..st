initialization
addViewDay: aSCMAgendaViewDay withEvents: aSortedCollection

	self addEventMorphs: aSortedCollection ToViewDay: aSCMAgendaViewDay.
	self addMorphBack: aSCMAgendaViewDay