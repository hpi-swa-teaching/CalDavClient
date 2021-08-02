validation
dateAndTimeString

	^ (CALEvent numberToTwoDigitsString: self beginDay), '.',
		(CALEvent numberToTwoDigitsString: self beginMonth), '.',
		(self beginYear), ' ' , 
		(CALEvent numberToTwoDigitsString: self beginHour), ':' ,
		(CALEvent numberToTwoDigitsString: self beginMinute), ' - ',
		(CALEvent numberToTwoDigitsString: self endDay), '.',
		(CALEvent numberToTwoDigitsString: self endMonth), '.',
		(self endYear), ' ' , 
		(CALEvent numberToTwoDigitsString: self endHour), ':', 
		(CALEvent numberToTwoDigitsString: self endMinute)