accessing
endDateAndTime: aDateAndTime

	self
		endYear: aDateAndTime year asString;
		endMonth: aDateAndTime month asString;
		endDay: aDateAndTime dayOfMonth asString;
		endHour: aDateAndTime hour asString;
		endMinute: aDateAndTime minute asString