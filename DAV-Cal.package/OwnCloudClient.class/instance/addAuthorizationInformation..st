as yet unclassified
addAuthorizationInformation: aRequest

	^ aRequest headerAt: 'Authorization' put: 'Basic ', (self password, ':', self username) 		base64Encoded