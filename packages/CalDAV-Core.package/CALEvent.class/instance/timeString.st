validation
timeString

	self isFullDay 
		ifTrue: [^ '[whole day]'] 
		ifFalse: [^ (self class numberToTwoDigitsString: self beginHour), ':', 
					(self class numberToTwoDigitsString: self beginMinute), ' - ', 
					(self class numberToTwoDigitsString: self endHour), ':' , 
					(self class numberToTwoDigitsString: self endMinute)]