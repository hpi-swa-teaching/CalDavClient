as yet unclassified
signIn
	| authorizationData dialog |
	
	authorizationData := self getAuthorizationData.
	
	dialog := PHDialog new.
	dialog content: (PHPage new withPadding; add: (PHLabel new text: 'Please go to: ' , (authorizationData at: #verification_url) , 
		' and enter the following code: ' , (authorizationData at: #user_code));  add: ((PHButton text: 'Copy URL') when: #clicked send: #clipboardText: to: Clipboard with: (authorizationData at: #verification_url)); add: ((PHButton text: 'Copy Code') when: #clicked send: #clipboardText: to: Clipboard with: (authorizationData at: #verification_url)); add:((PHButton text: 'OK') when: #clicked send: #assumeSigningIn to: self with: authorizationData)).
	"
	UIManager default inform: 
		'Please go to: ' , (authorizationData at: #verification_url) , 
		' and enter the following code: ' , (authorizationData at: #user_code).


	resultData := self getTokens: authorizationData.
	
	self 
		accessToken: (resultData at: #access_token);
		refreshToken: (resultData at: #refresh_token). "
