initialize-release
isFirstDayPartOfCalenderWeek
	
	| index firstDayOfYear |
	
	index := -1.
	firstDayOfYear := Date year: Date today year day: 1.
	(firstDayOfYear weekdayIndex < 6 and: [firstDayOfYear weekdayIndex > 1])
		ifTrue: [index := 0].
	^ index	