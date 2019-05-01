authorization
addAuthorizationInformation: aRequest

	^ aRequest headerAt: 'Authorization' put: 'Basic ', (self username, ':', self password) base64Encoded