as yet unclassified
testCredentialPersistance

	| cal |
	
	cal := CALWebDAVCalendar new
		name: 'testCalendar';
		caldavLink: 'https://l.com';
		username: 'u';
		password: 'p';
		storeCredentials;
		caldavLink: '';
		username: '';
		password: '';
		restoreCredentials.
		
	self assert: cal username equals: 'u'.
	self assert: cal password equals: 'p'.
	self assert: cal caldavLink equals: 'https://l.com'.
		
		