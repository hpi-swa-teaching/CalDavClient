accessing
beginDateAndTime: aDateAndTime

	self
		beginYear: aDateAndTime year asString;
		beginMonth: aDateAndTime month asString;
		beginDay: aDateAndTime dayOfMonth asString;
		beginHour: aDateAndTime hour asString;
		beginMinute: aDateAndTime minute asString