as yet unclassified
signIn

	| authorizationData dialog user_code url urlButton |
	
	authorizationData := GoogleClient getAuthorizationData.
	url := authorizationData at: #verification_url.
	user_code :=  authorizationData at: #user_code.
	urlButton := PHButton label: 'Copy URL'.
	urlButton when: #clicked send: #clipboardText: to: Clipboard with: url.
	dialog := PHDialog new.
	dialog content: (PHPage new withPadding; add: (PHLabel new text: 'Please go to: ' , url , 
		' and enter the following code: ' ,user_code);  add: urlButton ; add: ((PHButton label: 'Copy Code') when: #clicked send: #clipboardText: to: Clipboard with: user_code); add:((PHButton label: 'OK') when: #clicked send: #accept: to: dialog with: nil)).

	
	(dialog openFor: self)
		then: [|resultData|
			[resultData := GoogleClient getTokens: authorizationData.
	
			GoogleClient 
				accessToken: (resultData at: #access_token);
				refreshToken: (resultData at: #refresh_token).
			calendarIDDialog openFor: self.	
			SCGoogleCalDavClient establishedConnection: (SCGoogleCalDavClient establishedConnection) + 1.	
			self label text: 'Already connected to Google'
			] on: Error do: [UIManager default inform: 'Signing in was unsucessful'. SCGoogleButton GoogleClientSetNil].];
		ifRejected: [UIManager default inform: 'Signing in was interrupted'].