as yet unclassified
initialize

super initialize.
self text: 'Already connected to Google'.
(GoogleClient accessToken isNil or: [GoogleClient refreshToken isNil])
		ifTrue: [self text: 'Connect to Google'.].
self color: Color blue.
self when: #clicked send: #openDialog to: self. 