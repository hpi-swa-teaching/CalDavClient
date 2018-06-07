calendar management
restoreCalendars

	CALCalendar calendarDirectory fileNames do: [ :each | self addCalendar: (CALCalendar 	withName: each) ].
	self calendars do: [ :each | each restoreEvents ].
	self changed: #calenderNames.
	self changed: #eventNames
	
	