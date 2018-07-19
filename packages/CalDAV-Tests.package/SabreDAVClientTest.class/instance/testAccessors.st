as yet unclassified
testAccessors 

	self sabreDAVClient
		password: 'testpassword';
		username: 'testuser'.
	
	self assert: self sabreDAVClient password equals: 'testpassword'.
	self assert: self sabreDAVClient username equals: 'testuser'.