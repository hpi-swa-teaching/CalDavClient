as yet unclassified
testErrorOnWrongLinkScheme
	
	| cal |
	
	cal := CALSubscriptionICSCalendar new.
	cal 
		name: 'testCalendar';
		caldavLink: 'test'.
	self should: [cal updateEvents] raise: Error whoseDescriptionIncludes: 'Unsupported scheme: test' description: 'Should throw error on wrong link format'