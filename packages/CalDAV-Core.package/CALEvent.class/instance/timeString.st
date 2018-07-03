validation
timeString

	self isFullDay 
		ifTrue: [^'[whole day]'] 
		ifFalse: [^(CALEvent numberToTwoDigitsString: self beginHour), ':' , (CALEvent numberToTwoDigitsString: self beginMinute), ' - ', (CALEvent numberToTwoDigitsString: self endHour), ':' , (CALEvent numberToTwoDigitsString: self endMinute)]