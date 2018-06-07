authorization
assumesAuthorization

	(self accessToken isNil or: [self refreshToken isNil])
		ifTrue: [self signIn]