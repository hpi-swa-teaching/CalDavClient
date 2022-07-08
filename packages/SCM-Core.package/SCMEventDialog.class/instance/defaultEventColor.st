actions
defaultEventColor

	^ self calendarList editableCalendarsNames isEmpty not ifTrue: [self calendarList selectedEditableCalendar color] ifFalse: [Color turquoise]