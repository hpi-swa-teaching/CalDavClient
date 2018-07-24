as yet unclassified
testCredentialHandling

	| cal |
	
	cal := CalDavCalendarCALVersion new
			username: 'testuser';
			password: 'testpassword'.
	cal addCredentialData.
	self assert: cal client username equals: 'testuser' description: 'Should add the credential data from the client'..
	self assert: cal client password equals: 'testpassword' description: 'Should add the credential data from the client'..
	cal removeCredentialData.
	self assert: cal client username equals: nil description: 'Should remove the credential data from the client'.
	self assert: cal client password equals: nil description: 'Should remove the credential data from the client'.
	
	