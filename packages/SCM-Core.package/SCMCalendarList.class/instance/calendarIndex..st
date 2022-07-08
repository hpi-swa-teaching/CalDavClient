accessing
calendarIndex: aNumber

	(aNumber = 0 and: [self editableCalendarsNames isEmpty not]) ifTrue: [self triggerEvent: #calendarIndex: with: self selectedEditableCalendar color. ^ self].
	(aNumber <= self editableCalendarsNames size and: [aNumber >= 1])
		ifTrue: [calendarIndex := aNumber. 
				self changed: #calendarIndex.
				self triggerEvent: #calendarIndex: with: self selectedEditableCalendar color]