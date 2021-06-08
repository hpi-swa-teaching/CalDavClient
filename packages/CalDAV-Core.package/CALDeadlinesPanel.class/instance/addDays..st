toolbuilder
addDays: aNumber

	[self date: (self date addDays: aNumber)]
		on: Error
		do: ["Nothing"]
