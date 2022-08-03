accessing
beginDateAndTime

	^ DateAndTime
			year: self beginYear asNumber
			month: self beginMonth asNumber 
			day: self beginDay asNumber
			hour: self beginHour asNumber
			minute: self beginMinute asNumber