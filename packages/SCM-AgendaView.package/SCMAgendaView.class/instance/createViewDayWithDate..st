initialization
createViewDayWithDate: aDate

	| viewDay |
	
	viewDay := SCMAgendaViewDay createWithDate: aDate.
	self agendaViewDays at: aDate put: viewDay.
	
	^ viewDay