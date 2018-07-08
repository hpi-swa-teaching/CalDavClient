toolbuilder
shouldDisplayEventsFor: anIndex

	^ self calendarsToShow includes: (self nameOfCalendarAt: anIndex)
