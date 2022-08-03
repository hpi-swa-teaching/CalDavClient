accessing
end: aDateAndTime

	self 
		endYear: aDateAndTime year asString;
		endMonth: aDateAndTime monthIndex asString; 
		endDay: aDateAndTime dayOfMonth asString;
		endHour: aDateAndTime hour asString;
		endMinute: aDateAndTime minute asString