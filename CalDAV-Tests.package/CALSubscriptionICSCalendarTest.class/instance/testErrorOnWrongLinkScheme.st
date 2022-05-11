testing
testErrorOnWrongLinkScheme
	
	self calendar 
		name: 'testCalendar';
		caldavLink: 'test'.
	self should: [self calendar updateEvents] raise: Error whoseDescriptionIncludes: 'Unsupported scheme: test' description: 'Should throw error on wrong link format'