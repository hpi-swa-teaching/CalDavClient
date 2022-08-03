accessing
begin: aDateAndTime

	self 
		beginYear: aDateAndTime year asString; 
		beginMonth: aDateAndTime monthIndex asString; 
		beginDay: aDateAndTime dayOfMonth asString;
		beginHour: aDateAndTime hour asString;
		beginMinute: aDateAndTime minute asString