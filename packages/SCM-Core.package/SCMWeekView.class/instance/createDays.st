as yet unclassified
createDays

	| day |
	
	day := (DateAndTime today asWeek) asDate.
	7 timesRepeat:
		[self addMorphBack: (SCMWeekViewDay createWithDate: day).
		day := day next]