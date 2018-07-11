as yet unclassified
testCredentialPersistance

	| cal |
	
	cal := CALWebDAVCalendar new
		caldavLink: 'l';
		username: 'u';
		password: 'p';
		store;
		caldavLink: '';
		username: '';
		password: '';
		restore.
		
	self assert: cal username equals: 'u'.
	self assert: cal password equals: 'p'.
	self assert: cal caldavLink equals: 'l'.
		
		