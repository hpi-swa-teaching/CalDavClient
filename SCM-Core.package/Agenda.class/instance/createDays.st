initialization
createDays

	| day |
	day := DateAndTime today asDate.
	7 timesRepeat:
		[self addMorphBack: (AgendaDay createWithDate: day).
		day := day next]