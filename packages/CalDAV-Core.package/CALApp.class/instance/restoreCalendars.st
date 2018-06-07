calendar management
restoreCalendars

	CALCalendar calendarDirectory fileNames do: [:name | self addCalendar: (CALCalendar 	withName: name)].
	self calendars do: [:calendar | calendar restoreEvents ].
	self changed: #calenderNames.
	self changed: #eventNames
	
	