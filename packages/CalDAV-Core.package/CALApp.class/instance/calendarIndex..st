accessing
calendarIndex: anObject
	anObject = 0
		ifFalse: [calendarIndex := anObject.
				self changed: #currentIndex.
				self changed: #eventNames].
	