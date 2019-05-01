authorization
addAuthorizationInformation: aRequest

	^ aRequest headerAt: 'Authorization' put: 'Bearer ' , self accessToken