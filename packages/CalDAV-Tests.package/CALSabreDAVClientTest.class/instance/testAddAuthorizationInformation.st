testing
testAddAuthorizationInformation

	| request |
	
	request := WebRequest new.
	self sabreDAVClient 
		username: 'username';
		password: 'password';
		addAuthorizationInformation: request.
		
	self assert: (request headerAt: 'Authorization') equals: 'Basic dXNlcm5hbWU6cGFzc3dvcmQ='  " 'username:password' base64Encoded "
