accessing
end: aDate

	self eventData addAll:
		{#endYear -> aDate year asString .
		#endMonth -> aDate month asString . 
		#endDay -> aDate dayOfMonth asString .
		#endHour -> aDate hour asString .
		#endMinute -> aDate minute asString}