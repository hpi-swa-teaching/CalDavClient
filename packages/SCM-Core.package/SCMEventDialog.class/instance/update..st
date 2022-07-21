updating
update: aSymbol

	aSymbol = #calendarSelected ifTrue: [self color: self calendarList selectedEditableCalendar color]