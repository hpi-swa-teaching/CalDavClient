accessing
begin: aDate

	self eventData addAll: 
		{#beginYear -> aDate year asString .
		#beginMonth ->aDate month asString . 
		#beginDay -> aDate dayOfMonth asString .
		#beginHour -> aDate hour asString .
		#beginMinute -> aDate minute asString}