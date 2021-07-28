toolbuilder
startDateForWeek: aNumber

	aNumber = 1
		ifTrue: [^ Date new
					start: (self firstDay start offset: DateAndTime localOffset)]
		ifFalse: [^ Date new
					start: ((self firstDay addDays: ((aNumber - 1) * 7) - self differenceToMonday) start offset: DateAndTime localOffset)]
