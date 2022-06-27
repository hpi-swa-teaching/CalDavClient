accessing
end

	^ DateAndTime 
		year: (self endYear asNumber) 
		month: (self endMonth asNumber) 
		day: (self endDay asNumber) 
		hour: (self endHour asNumber) 
		minute: (self endMinute asNumber)