accessing
initializeServerData

	self serverData: (ICEvent new
		stamp: DateAndTime now;
		created: DateAndTime now;
		start: DateAndTime now;
		end: DateAndTime now + 15 minutes;
		summary: '').
		
	self serverCalendar: (self client newServerCalendarFor: self calendar).
	
	self serverCalendar events add: self serverData.
		