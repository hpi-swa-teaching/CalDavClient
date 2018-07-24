CalendarMorph
addMonths: aNumber

	[self date: (self date addMonths: aNumber)]
		on: Error
		do: ["Nothing"]