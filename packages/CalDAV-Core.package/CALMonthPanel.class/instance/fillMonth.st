actions
fillMonth
"Creates 42 day models for the 6 weeks containing the month. The additional days are filled with nil."

	self days ifEmpty: [42 timesRepeat: [self days add: (CALDay new app: self app)]].
	1 to: 42 do: [ :each | [(self days at: each) date: 
		(Timespan
			starting: (DateAndTime 
				year: (self firstOfMonth year)
				month: (self firstOfMonth monthIndex)
				day: (self dayAt: each)
				hour: 0
				minute: 0) 
			duration: (Duration days: 1))]
		on: Error do: [(self days at: each) date: nil] ]
	
	
	