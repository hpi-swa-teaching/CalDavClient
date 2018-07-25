testing
testAuthorization

	| client request |
	
	self assert: (CALPublicCalDAVClient canUnderstand: #assumesAuthorization).
	client := CALPublicCalDAVClient new
		assumesAuthorization;
		yourself.
	request := WebRequest new.
	self assert: request = (client addAuthorizationInformation: request)