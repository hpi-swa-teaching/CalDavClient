initialization
createAndAddViewDayAtDate: aDate

	| viewDay |
	
	viewDay := SCMAgendaViewDay createWithDate: aDate.
	self addMorphBack: viewDay.
	self agendaViewDays at: aDate put: viewDay.
	^ viewDay
	