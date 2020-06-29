as yet unclassified
GoogleClient
	^ GoogleClient ifNil: [GoogleClient := NDGoogleCalDavClient new]