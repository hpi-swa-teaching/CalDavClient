as yet unclassified
addDays: aNumber

	[self date: (self date addDays: aNumber)]
		on: Error
		do: ["Nothing"]
