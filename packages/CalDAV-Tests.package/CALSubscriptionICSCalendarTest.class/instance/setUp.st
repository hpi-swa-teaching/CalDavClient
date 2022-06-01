running
setUp
	
	self eventCalendar: CALSubscriptionICSCalendar new.
	self eventCalendar 
		name: 'subscriptionTest';
		caldavLink: 'test';
		storeLink;
		caldavLink: '';
		restoreLink.
	
	self assert: self eventCalendar caldavLink = 'test'
	