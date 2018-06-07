as yet unclassified
fillMonth

	self fields.
		1 to: 6 do: [ :row |
			 1 to: 7 do: [ :column |
				[(days at: (row-1)*7+column) date: (Timespan starting: (DateAndTime year: (firstOfMonth year) month: (firstOfMonth monthIndex) day: (self dayAt: row and: column) hour: 0 minute: 0) duration: (Duration days: 1)).] on: Error do: [(days at: (row-1)*7+column) date: nil].
				(days at: (row-1)*7+column) changed: #eventNames.
				(days at: (row-1)*7+column) changed: #dateText.
			]
		].
	
	
	