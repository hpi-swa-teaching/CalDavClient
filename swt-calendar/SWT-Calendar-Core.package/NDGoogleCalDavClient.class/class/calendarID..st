as yet unclassified
calendarID: aCalendarID
	
	aCalendarID isNil
		ifTrue: (NDGoogleCalDavClient establishedConnection > 1
			ifTrue: [NDGoogleCalDavClient establishedConnection: (NDGoogleCalDavClient establishedConnection) - 3])
		ifFalse: [NDGoogleCalDavClient establishedConnection > 1
			ifTrue:  (NDGoogleCalDavClient establishedConnection: (NDGoogleCalDavClient establishedConnection) + 3)].
	CalendarID := aCalendarID.