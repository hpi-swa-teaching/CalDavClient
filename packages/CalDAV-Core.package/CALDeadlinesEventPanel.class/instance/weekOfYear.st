constants
weekOfYear

	| firstDayOfYear index |
	index := -1.
	firstDayOfYear := Date year: Date today year day: 1.
	"firstDayOfYear := Date year: (Date today subtractDays: 365) year day: 1."
	(firstDayOfYear weekdayIndex < 6 and: [firstDayOfYear weekdayIndex > 1])
		ifTrue: [index := 0].
	^ ((self dayOfYear + (self index * 7) / 7) roundUpTo: 1) + index
	"^(((Date today subtractDays: 365) asJulianDayNumber - (Date year: (Date today subtractDays: 365) year day: 1) asJulianDayNumber + (self index * 7) / 7) roundUpTo: 1) + index"