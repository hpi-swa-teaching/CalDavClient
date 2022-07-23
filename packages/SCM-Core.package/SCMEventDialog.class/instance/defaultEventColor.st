constants
defaultEventColor

	^ self calendarList editableCalendarsTitles isEmpty not
			ifTrue: [self calendarList selectedEditableCalendar color]
			ifFalse: [Color turquoise]