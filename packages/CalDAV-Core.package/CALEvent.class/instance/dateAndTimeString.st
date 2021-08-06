validation
dateAndTimeString

	^ (self class numberToTwoDigitsString: self beginDay), '.',
		(self class numberToTwoDigitsString: self beginMonth), '.',
		(self beginYear), ' ' , 
		(self class numberToTwoDigitsString: self beginHour), ':' ,
		(self class numberToTwoDigitsString: self beginMinute), ' - ',
		(self class numberToTwoDigitsString: self endDay), '.',
		(self class numberToTwoDigitsString: self endMonth), '.',
		(self endYear), ' ' , 
		(self class numberToTwoDigitsString: self endHour), ':', 
		(self class numberToTwoDigitsString: self endMinute)