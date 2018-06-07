authorization
updateAccessToken
	"https://developers.google.com/identity/protocols/OAuth2ForDevices#refreshtoken"

	| basePostBody result |
	basePostBody := Dictionary newFrom: {
		#client_id -> self clientId.
		#client_secret -> self clientKey.
		#refresh_token -> self refreshToken.
		#grant_type -> 'refresh_token' }.
		
	result := self sendRequestToGoogle: basePostBody.
	
	(result includesKey: #error) ifTrue: [
		CalDavGenericException signal: 'Got an erroneous response when trying to update the authorization token from Google'].
	self accessToken: (result at: #access_token).