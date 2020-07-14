as yet unclassified
calendarID: aCalendarID
	
	aCalendarID isNil
		ifTrue: (SCGoogleCalDavClient establishedConnection > 1
			ifTrue: [SCGoogleCalDavClient establishedConnection: (SCGoogleCalDavClient establishedConnection) - 3])
		ifFalse: [SCGoogleCalDavClient establishedConnection > 1
			ifTrue:  (SCGoogleCalDavClient establishedConnection: (SCGoogleCalDavClient establishedConnection) + 3)].
	CalendarID := aCalendarID.