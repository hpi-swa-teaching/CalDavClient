accessing
calendarIndex: anObject
	anObject = 0
		ifFalse: [calendarIndex := anObject.
				self changed: #calendarIndex.
				self changed: #calendarNames.
				self changed: #eventNames].
	