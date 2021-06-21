accessing
calendarIndex: aNumber

	aNumber = 0
		ifTrue: [self error: 'calendarIndex should not be 0']
		ifFalse: [calendarIndex := aNumber.
				self changed: #calendarIndex.
				self changed: #calendarNames.
				self updateView]