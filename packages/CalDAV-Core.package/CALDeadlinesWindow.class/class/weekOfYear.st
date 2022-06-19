initialize-release
weekOfYear

	^ ((self dayOfYear / 7) roundUpTo: 1) + self isFirstDayPartOfCalenderWeek