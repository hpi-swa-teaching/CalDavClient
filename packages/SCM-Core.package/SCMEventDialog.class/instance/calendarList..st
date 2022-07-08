accessing
calendarList: anObject

	calendarList := anObject.
	calendarList
		when: #calendarIndex:
		send: #color:
		to: self