running
setUp
	
	self calendar: CALSubscriptionICSCalendar new.
	self calendar 
		name: 'subscriptionTest';
		caldavLink: 'test';
		storeLink;
		caldavLink: '';
		restoreLink.
	
	self assert: self calendar caldavLink = 'test'
	