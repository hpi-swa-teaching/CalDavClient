testing
testAuthorization

	| client request |
	
	self assert: (PublicCalDAVClient canUnderstand: #assumesAuthorization).
	client := PublicCalDAVClient new
		assumesAuthorization;
		yourself.
	request := WebRequest new.
	self assert: request = (client addAuthorizationInformation: request)