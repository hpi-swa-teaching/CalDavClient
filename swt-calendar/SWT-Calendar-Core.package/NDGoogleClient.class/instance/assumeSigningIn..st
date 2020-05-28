as yet unclassified
assumeSigningIn: authorizationData
	|resultData|
	resultData := self getTokens: authorizationData.
	
	self 
		accessToken: (resultData at: #access_token);
		refreshToken: (resultData at: #refresh_token).
