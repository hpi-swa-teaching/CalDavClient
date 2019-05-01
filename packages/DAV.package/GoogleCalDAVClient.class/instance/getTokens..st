authorization
getTokens: authorizationData

	| basePostBody result |
	basePostBody := Dictionary newFrom: {
		#client_id -> self clientId.
		#code -> (authorizationData at: #device_code).
		#grant_type -> 'http://oauth.net/grant_type/device/1.0'.
		#client_secret -> self clientKey.
	}.

	result := self sendRequestToGoogle: basePostBody.
		
	(result includesKey: #error) 
		ifTrue: [CalDavGenericException signal: 'Got an erroneous response when trying to get the authorization token from Google'].
	
	^ result