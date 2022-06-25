actions
reloadDates
	
	| fields |
	
	fields := {#beginDay . #beginMonth . #beginYear . 
				#beginHour . #beginMinute . 
				#endDay . #endMonth . #endYear . 
				#endHour . #endMinute}.
	fields do: [:each | self changed: each]