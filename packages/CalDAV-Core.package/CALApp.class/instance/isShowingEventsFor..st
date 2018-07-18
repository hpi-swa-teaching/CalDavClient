toolbuilder
isShowingEventsFor: anIndex

	^ self calendarsToShow includes: (self nameOfCalendarAt: anIndex)
