actions
reloadDates
	
	{#beginDay.
	#beginMonth.
	#beginYear.
	#beginHour.
	#beginMinute. 
	#endDay.
	#endMonth.
	#endYear. 
	#endHour.
	#endMinute}
		do: [:each | self changed: each]