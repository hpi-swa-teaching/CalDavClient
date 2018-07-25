event management
isShowingEventsFor: anIndex

	^ self calendarsToShow includes: (self nameOfCalendarAt: anIndex)
