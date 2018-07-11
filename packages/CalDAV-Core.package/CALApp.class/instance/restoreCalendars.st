calendar management
restoreCalendars

	CALCalendar calendarDirectory fileNames do: [ :each | self addCalendar: (CALCalendar withName: each) ].
	CALSubscriptionICSCalendar calendarDirectory fileNames do: [ :each | self addCalendar: (CALSubscriptionICSCalendar withName: each) ].
	self calendars do: [ :each | each restore ].
	self changed: #calenderNames.
	self changed: #eventNames
	
	