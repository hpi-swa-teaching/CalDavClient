authorization
getAuthorizationData

	| basePostBody postBody result |
	basePostBody := Dictionary newFrom: {
		#client_id -> self clientId.
		#scope -> 'https://www.googleapis.com/auth/calendar'.
	}.
	
	postBody := WebUtils encodeUrlEncodedForm: basePostBody.
	result := WebClient httpPost: 'https://accounts.google.com/o/oauth2/device/code' 
				content: postBody 
				type: 'application/x-www-form-urlencoded'.
	^ WebUtils jsonMapFrom: (ReadStream on: result content).