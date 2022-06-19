testing
testCredentialPersistance

	self eventCalendar: (CALWebDAVCalendar new
		name: 'webdavTest';
		caldavLink: 'https://l.com';
		username: 'u';
		password: 'p';
		storeCredentials;
		caldavLink: '';
		username: '';
		password: '';
		restoreCredentials).
		
	self assert: self eventCalendar username equals: 'u'.
	self assert: self eventCalendar password equals: 'p'.
	self assert: self eventCalendar caldavLink equals: 'https://l.com'.
		
		