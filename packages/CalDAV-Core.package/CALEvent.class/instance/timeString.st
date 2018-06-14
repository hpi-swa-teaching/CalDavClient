validation
timeString

	^ (CALEvent numberToTwoDigitsString: self beginHour), ':' , (CALEvent numberToTwoDigitsString: self beginMinute), ' - ', (CALEvent numberToTwoDigitsString: self endHour), ':' , (CALEvent numberToTwoDigitsString: self endMinute) .