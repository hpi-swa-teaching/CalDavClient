initialization
generateTempRepository

	^ SCMCalendarRepository new
		addCalendar: self event calendar;
		yourself