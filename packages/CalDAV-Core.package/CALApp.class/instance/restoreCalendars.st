calendar management
restoreCalendars

	CALCalendar calendarDirectory fileNames do: [ :each | self addCalendar: (CALCalendar withName: each) ].
	CALWebCalendar calendarDirectory fileNames do: [ :each | self addCalendar: (CALWebCalendar withName: each) ].
	self calendars do: [ :each | each restore ].
	self changed: #calenderNames.
	self changed: #eventNames
	
	