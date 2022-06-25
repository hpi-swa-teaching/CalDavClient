actions
makeFullDay

	self eventData
		addAll: {#beginHour -> '0' . 
		#beginMinute -> '0' .
		#endHour -> '23' .
		#endMinute -> '59'}