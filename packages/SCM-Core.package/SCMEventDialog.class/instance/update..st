updating
update: aSymbol

	(aSymbol = #calendarSelected 
		and: [self calendarList displaysEditableCalendars]) 
			ifTrue: [self color: self calendarList selectedEditableCalendar color]