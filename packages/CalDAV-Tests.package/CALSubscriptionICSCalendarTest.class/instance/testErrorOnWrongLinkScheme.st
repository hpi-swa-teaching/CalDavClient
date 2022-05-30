testing
testErrorOnWrongLinkScheme
	
	self eventCalendar 
		name: 'testCalendar';
		caldavLink: 'test'.
	self should: [self eventCalendar updateEvents] raise: Error whoseDescriptionIncludes: 'Unsupported scheme: test' description: 'Should throw error on wrong link format'