CalendarMorph
addDays: aNumber
	[self date: (date addDays: aNumber)]
		on: Error
		do: ["Nothing"]