testing
testCredentialPersistance

	self calendar: (CALWebDAVCalendar new
		name: 'webdavTest';
		caldavLink: 'https://l.com';
		username: 'u';
		password: 'p';
		storeCredentials;
		caldavLink: '';
		username: '';
		password: '';
		restoreCredentials).
		
	self assert: self calendar username equals: 'u'.
	self assert: self calendar password equals: 'p'.
	self assert: self calendar caldavLink equals: 'https://l.com'.
		
		