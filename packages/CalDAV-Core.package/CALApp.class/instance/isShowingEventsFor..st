event management
isShowingEventsFor: aNumber

	^ self calendarsToShow includes: (self nameOfCalendarAt: aNumber)