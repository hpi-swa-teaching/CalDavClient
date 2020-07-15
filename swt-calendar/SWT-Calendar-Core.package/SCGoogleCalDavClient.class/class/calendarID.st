as yet unclassified
calendarID
	
	CalendarID isNil
		ifTrue: [self inform: 'Please enter your calendarID via: SCGoogleCalDavClient calendarID: ''yourCalendarID'''.
				self error: 'no CalendarID given'.]
		ifFalse: [^ CalendarID].