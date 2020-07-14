as yet unclassified
GoogleClient
	^ GoogleClient ifNil: [GoogleClient := SCGoogleCalDavClient new]