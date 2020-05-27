as yet unclassified
assumeSigningIn: authorizationData
	|resultData|
	[resultData := googleClient getTokens: authorizationData.
	
	googleClient 
		accessToken: (resultData at: #access_token);
		refreshToken: (resultData at: #refresh_token).
	self label text: 'Anmeldung erfolgreich'
	] on: Error do: [self label text: 'Anmeldung war nicht erfolgreich'].