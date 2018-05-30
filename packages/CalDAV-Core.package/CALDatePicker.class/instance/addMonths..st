CalendarMorph
addMonths: aNumber
	[self date: (date addMonths: aNumber)]
		on: Error
		do: ["Nothing"]