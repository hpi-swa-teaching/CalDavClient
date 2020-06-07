as yet unclassified
googleCalDavClient
	^ GoogleCalDAVClient ifNil: [GoogleCalDAVClient := NDGoogleClient new]
	