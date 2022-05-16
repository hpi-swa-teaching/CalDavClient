initialization
createDays

	| day |
	day := DateAndTime today asDate.
	7 timesRepeat:
		[self addMorphBack: (SCMAgendaDay createWithDate: day).
		day := day next]