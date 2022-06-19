actions
reloadDates
	
	| fields |
	
	fields := {#eventBeginDay . #eventBeginMonth . #eventBeginYear . 
				#eventBeginHour . #eventBeginMinute . 
				#eventEndDay . #eventEndMonth . #eventEndYear . 
				#eventEndHour . #eventEndMinute}.
	fields do: [:each | self changed: each]