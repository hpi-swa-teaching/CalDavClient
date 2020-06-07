accessing
calendarIndex: anObject

	anObject = 0
		ifTrue: [self error: 'calendarIndex should not be 0']
		ifFalse: [calendarIndex := anObject.
				self changed: #calendarIndex.
				self changed: #calendarNames.
				self updateView]