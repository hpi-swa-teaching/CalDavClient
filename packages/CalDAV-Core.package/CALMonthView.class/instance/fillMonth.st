actions
fillMonth

	(1 to: 42) do: [ :each | [(self days at: each) date: 
		(Timespan
			starting: (DateAndTime 
				year: (firstOfMonth year)
				month: (firstOfMonth monthIndex)
				day: (self dayAt: each)
				hour: 0
				minute: 0) 
			duration: (Duration days: 1))]
		on: Error do: [(self days at: each) date: nil] ]
	
	
	