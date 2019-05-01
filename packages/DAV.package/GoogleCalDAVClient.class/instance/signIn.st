authorization
signIn

	| authorizationData resultData |
	
	authorizationData := self getAuthorizationData.

	UIManager default inform: 
		'Please go to: ' , (authorizationData at: #verification_url) , 
		' and enter the following code: ' , (authorizationData at: #user_code).

	resultData := self getTokens: authorizationData.
	
	self 
		accessToken: (resultData at: #access_token);
		refreshToken: (resultData at: #refresh_token).
