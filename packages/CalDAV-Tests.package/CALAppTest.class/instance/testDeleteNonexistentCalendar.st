testing
testDeleteNonexistentCalendar

	self should: [self app deleteCalendarNamed: 'thisIsANonExistentCalendar'] 
		raise: Error 
		whoseDescriptionIncludes: 'There is no calendar named thisIsANonExistentCalendar in calendars collection'
	      description: 'Should throw error on trying to delete noexistent Calendar'
	