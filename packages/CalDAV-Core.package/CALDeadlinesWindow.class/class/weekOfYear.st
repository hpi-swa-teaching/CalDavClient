initialize-release
weekOfYear

	| index |
	
	index := self isFirstDayPartOfCalenderWeek.
	^ ((self dayOfYear / 7) roundUpTo: 1) + index