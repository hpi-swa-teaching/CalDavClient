initialize-release
initialize

super initialize.
self class GoogleClient.
self text: 'Already connected to Google'.
(GoogleClient clientKey isNil or: [GoogleClient clientId isNil])
	ifTrue: [self text: 'Please add your developer code to GoogleCalDAVClient -> clientId/clientKey'].
(GoogleClient accessToken isNil or: [GoogleClient refreshToken isNil])
		ifTrue: [self text: 'Connect to Google'.].
self color: Color blue.
self when: #clicked send: #openDialog to: self. 